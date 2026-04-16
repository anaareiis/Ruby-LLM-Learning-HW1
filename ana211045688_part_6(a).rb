# HW1 - 6(a): Currency conversion

class Numeric
  @@currencies = {
    'dollar' => 1,
    'euro' => 1.292,
    'rupee' => 0.019,
    'yen' => 0.013
  }

  def method_missing(method_id)
    currency = method_id.to_s.gsub(/s$/, '')
    if @@currencies[currency]
      self * @@currencies[currency]
    else
      super
    end
  end

  def in(target_currency)
    currency = target_currency.to_s.gsub(/s$/, '')
    self / @@currencies[currency]
  end
end