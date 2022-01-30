defmodule EnchanterShop do 
    @name  "Sachin"
    def test_data do 
        [
            %{name: "Gloves", price: 1000, sellable: true},
            %{name: "Pads", price: 1000, sellable: true},
            %{name: "Bat", price: 2000, sellable: true},
            %{name: "Helmet", price: 1500, sellable: true},
            %{name: "Ball", price: 300, sellable: false}
        ]
    end
    def transform([]), do: []
    def transform([first_item=%{sellable: false}|next_items]) do     
        [first_item | transform(next_items)]
    end
    def transform([first_item|rest]) do 
        new_item = %{
            name: "#{@name}'s #{first_item.name}",
            price: "Rs. #{first_item.price}",
            sellable: first_item.sellable
        }
        [
            new_item | transform(rest)
        ]
    end
end 

data = EnchanterShop.test_data()
IO.inspect EnchanterShop.transform(data)