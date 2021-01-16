class Address < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions #Activehashに定義されているモジュールを読み込み
  belongs_to :prefecture #prefectureモデルとのアソシエーションを定義
end
