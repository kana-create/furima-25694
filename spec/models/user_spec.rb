require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  before do
    @user = FactoryBot.build(:user)
  end
  describe "ユーザー新規登録" do
   context '新規登録できるとき' do
      it 'nicknameとemail、passwordとpassword_confirmationが存在すれば登録できる' do
      end
      it 'passwordとpassword_confirmationが6文字以上であれば登録できる' do
      end
   end
   context '新規登録できないとき' do
    it "nicknameが空だと登録できない" do
      user = User.new(nickname: "", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000",familyname: "ふりま",firstname: "太郎",familyname_kana: "フリマ",firstname_kana: "タロウ",birthday: "2000-01-01")
      user.valid?
      expect(user.errors.full_messages).to include("Nickname can't be blank")
    end
    it "emailが空では登録できない" do
      user = User.new(nickname: "abe", email: "", password: "00000000", password_confirmation: "00000000",familyname: "ふりま",firstname: "太郎",familyname_kana: "フリマ",firstname_kana: "タロウ",birthday: "2000-01-01")
      user.valid?
      expect(user.errors.full_messages).to include("Email can't be blank")
    end
    it "passwordが空では登録できない"do
    user = User.new(nickname: "abe", email: "kkk@gmail.com", password: "", password_confirmation: "00000000",familyname: "ふりま",firstname: "太郎",familyname_kana: "フリマ",firstname_kana: "タロウ",birthday: "2000-01-01")
    user.valid?
    expect(user.errors.full_messages).to include("password can't be blank")
    end
    it "familynameが空では登録できない"do
    user = User.new(nickname: "abe", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000",familyname: "",firstname: "太郎",familyname_kana: "フリマ",firstname_kana: "タロウ",birthday: "2000-01-01")
    user.valid?
    expect(user.errors.full_messages).to include("Familyname can't be blank")
    end
    it "firstnameが空では登録できない"do
    user = User.new(nickname: "abe", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000",familyname: "ふりま",firstname: "",familyname_kana: "フリマ",firstname_kana: "タロウ",birthday: "2000-01-01")
    user.valid?
    expect(user.errors.full_messages).to include("Firstname can't be blank")
    end
    it "familyname_kanaが空では登録できない"do
    user = User.new(nickname: "abe", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000",familyname: "ふりま",firstname: "太郎",familyname_kana: "",firstname_kana: "タロウ",birthday: "2000-01-01")
    user.valid?
    expect(user.errors.full_messages).to include("Familyname_kana can't be blank")
    end
    it "firstname_kanaが空では登録できない"do
    user = User.new(nickname: "abe", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000",familyname: "ふりま",firstname: "太郎",familyname_kana: "フリマ",firstname_kana: "",birthday: "2000-01-01")
    user.valid?
    expect(user.errors.full_messages).to include("Firstname_kana can't be blank")
    end
    it "birthdayが空では登録でいない"do
    user = User.new(nickname: "abe", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000",familyname: "ふりま",firstname: "太郎",familyname_kana: "フリマ",firstname_kana: "タロウ",birthday: "")
    user.valid?
    expect(user.errors.full_messages).to include("Birthday can't be blank")
    end
   end
  end
end
  