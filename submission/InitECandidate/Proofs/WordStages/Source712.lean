import InitECandidate.Proofs.WordStages.Source696
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody712_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody712_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 2)

def sourceBody712_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 4)

def sourceBody712_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody712_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 8)

def sourceBody712_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody712_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 12)

def sourceBody712_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody712_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([48]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody712_0, 712, 2)) (some 705) ([16, 36, 26, 46, 22, 42]) (some (16, sourceBody712_7, 712, 3))

def sourceBody712_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody712_10 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_8 sourceBody712_9

def sourceBody712_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_10 sourceBody712_0

def sourceBody712_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_6 sourceBody712_11

def sourceBody712_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_5 sourceBody712_12

def sourceBody712_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_4 sourceBody712_13

def sourceBody712_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_3 sourceBody712_14

def sourceBody712_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_2 sourceBody712_15

def sourceBody712_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_1 sourceBody712_16

def sourceBody712_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 48)

def sourceBody712_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody712_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody712_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody712_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 36 (Flapjack.WordRegImm.reg 26) sourceBody712_20 sourceBody712_21

def sourceBody712_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_22 sourceBody712_9

def sourceBody712_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.var 36)

def sourceBody712_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody712_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody712_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody712_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody712_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody712_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16, 36, 26, 46, 22, 42]

def sourceBody712_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_30 sourceBody712_0

def sourceBody712_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_29 sourceBody712_31

def sourceBody712_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_28 sourceBody712_32

def sourceBody712_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_27 sourceBody712_33

def sourceBody712_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_26 sourceBody712_34

def sourceBody712_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_21 sourceBody712_35

def sourceBody712_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_25 sourceBody712_36

def sourceBody712_38 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 46 (Flapjack.WordRegImm.imm 0#64) sourceBody712_37 sourceBody712_0

def sourceBody712_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_38 sourceBody712_9

def sourceBody712_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_39 sourceBody712_0

def sourceBody712_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_24 sourceBody712_40

def sourceBody712_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_23 sourceBody712_41

def sourceBody712_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_19 sourceBody712_42

def sourceBody712_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_18 sourceBody712_43

def sourceBody712_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.const 13402431016077863595#64)

def sourceBody712_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 2210141511517208575#64)

def sourceBody712_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.const 7435674573564081700#64)

def sourceBody712_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 7239337960414712511#64)

def sourceBody712_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 5412103778470702295#64)

def sourceBody712_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1873798617647539866#64)

def sourceBody712_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 2)

def sourceBody712_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 4)

def sourceBody712_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 6)

def sourceBody712_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 8)

def sourceBody712_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.var 10)

def sourceBody712_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 12)

def sourceBody712_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 52

def sourceBody712_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([16, 36, 26, 46, 22, 42, 32]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody712_0, 712, 4)) (some 709) ([52, 14, 34, 24, 44, 20, 40, 30, 50, 18, 38, 28]) (some (52, sourceBody712_57, 712, 5))

def sourceBody712_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_58 sourceBody712_9

def sourceBody712_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_59 sourceBody712_0

def sourceBody712_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_56 sourceBody712_60

def sourceBody712_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_55 sourceBody712_61

def sourceBody712_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_54 sourceBody712_62

def sourceBody712_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_53 sourceBody712_63

def sourceBody712_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_52 sourceBody712_64

def sourceBody712_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_51 sourceBody712_65

def sourceBody712_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_50 sourceBody712_66

def sourceBody712_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_49 sourceBody712_67

def sourceBody712_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_48 sourceBody712_68

def sourceBody712_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_47 sourceBody712_69

def sourceBody712_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_46 sourceBody712_70

def sourceBody712_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_45 sourceBody712_71

def sourceBody712_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 16)

def sourceBody712_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 36)

def sourceBody712_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 26)

def sourceBody712_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 46)

def sourceBody712_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 22)

def sourceBody712_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 42)

def sourceBody712_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [52, 14, 34, 24, 44, 20]

def sourceBody712_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_79 sourceBody712_0

def sourceBody712_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_78 sourceBody712_80

def sourceBody712_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_77 sourceBody712_81

def sourceBody712_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_76 sourceBody712_82

def sourceBody712_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_75 sourceBody712_83

def sourceBody712_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_74 sourceBody712_84

def sourceBody712_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_73 sourceBody712_85

def sourceBody712_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_72 sourceBody712_86

def sourceBody712_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_0 sourceBody712_87

def sourceBody712_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_0 sourceBody712_88

def sourceBody712_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_0 sourceBody712_89

def sourceBody712_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_0 sourceBody712_90

def sourceBody712_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_0 sourceBody712_91

def sourceBody712_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_0 sourceBody712_92

def sourceBody712_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_0 sourceBody712_93

def sourceBody712_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_0 sourceBody712_94

def sourceBody712_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_0 sourceBody712_95

def sourceBody712_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_0 sourceBody712_96

def sourceBody712_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_0 sourceBody712_97

def sourceBody712_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_0 sourceBody712_98

def sourceBody712_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_0 sourceBody712_99

def sourceBody712_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_0 sourceBody712_100

def sourceBody712_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_44 sourceBody712_101

def sourceBody712_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_17 sourceBody712_102

def sourceBody712_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_0 sourceBody712_103

def sourceBody712_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody712_0 sourceBody712_104

def source712 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (712, 7, sourceBody712_105)
end InitECandidate.Proofs.WordStages
