class Ingredient < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: 'ライス' },
    { id: 2, name: '野菜' },
    { id: 3, name: '肉' },
    { id: 4, name: '魚' },
]
end
