require 'car'

describe 'Car' do

    describe 'attributes' do
        it 'allows reading and writing for :make' do
            car = Car.new
            car.make = 'Test'
            expect(car.make).to eq('Test')
        end

        it 'allows reading and writing for :year' do
            car = Car.new
            car.year = 2008
            expect(car.year).to eq(2008)
        end

        it 'allows reading and writing for :color' do
            car = Car.new
            car.color = 'Pink'
            expect(car.color).to eq('Pink')
        end

        it 'allows reading for :wheels' do
            car = Car.new
            expect(car.wheels).to eq(4)
        end

        it 'allows writing for :doors' do
            car = Car.new
            car.doors  = "Unknown"
            # expect(car.doors).to eq('Unknown')
        end
    end

    describe '.colors ' do
      it 'returns array of color names' do
        c = ['blue', 'black', 'red', 'green']
        # car = Car.new // there is point instanciating 'self.colors' bcus is class static method
        expect(Car.colors).to match_array(c)
      end
    end

    describe '#full_name' do

        it 'returns full name in expected format ' do
            car = Car.new
            car.make = 'Mazda'
            car.year = 2009
            car.color = 'Brown'
            expect(car.full_name).to eq('2009 Mazda (Brown)')
        end

        it ' when init without any agrs ' do
            car = Car.new
            expect(car.full_name).to eq('2007 Volvo (unknown)')
        end
    end

end   # ender
