
class CashRegister

    attr_accessor :total, :items, :discount, :last_transaction_amount


    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = [] 
    end

    def add_item(item, price, quantity = 1)
        @total += price * quantity 
        @last_transaction_amount = price * quantity 
            while quantity.positive?
                @items << item 
                quantity -= 1
            end              
    end

    def apply_discount
        if discount == 0
            return "There is no discount to apply."
        else
            @total -= @total * @discount / 100 
            return "After the discount, the total comes to $#{@total}."
        end
    end

    def items
         @items 
      end 

    def void_last_transaction  
        self.total -= @last_transaction_amount
        self.total 
    end
      
end