FactoryBot.define do
  factory :customer do
    email                 {"test@gmail.com"}
    nickname              {"111111"}
    password              {"111111"}
    password_confirmation {"111111"}
    is_deleted            {'false'}
    factory 'enum' do
        it { is_expected.to define_enum_for(:gender).with_values(not_known: 0, male: 1, female: 2) }
    end
  end
end
