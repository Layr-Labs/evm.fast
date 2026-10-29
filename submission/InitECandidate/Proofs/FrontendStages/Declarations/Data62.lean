import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify46
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body62_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "acc"
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p00"))

def body62_1 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p01"),
    Flapjack.Exp.const 0#64]

def body62_2 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "acc" (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "t"))

def body62_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "hi"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "hi", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "t")])

def body62_4 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p10"),
    Flapjack.Exp.const 0#64]

def body62_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "acc" (Flapjack.Exp.var Flapjack.VarKind.local "hi")

def body62_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "hi" (Flapjack.Exp.const 0#64)

def body62_7 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p01"),
    Flapjack.Exp.const 0#64]

def body62_8 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p10"),
    Flapjack.Exp.const 0#64]

def body62_9 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p02"),
    Flapjack.Exp.const 0#64]

def body62_10 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p11"),
    Flapjack.Exp.const 0#64]

def body62_11 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p20"),
    Flapjack.Exp.const 0#64]

def body62_12 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p02"),
    Flapjack.Exp.const 0#64]

def body62_13 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p11"),
    Flapjack.Exp.const 0#64]

def body62_14 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p20"),
    Flapjack.Exp.const 0#64]

def body62_15 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p03"),
    Flapjack.Exp.const 0#64]

def body62_16 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p12"),
    Flapjack.Exp.const 0#64]

def body62_17 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p21"),
    Flapjack.Exp.const 0#64]

def body62_18 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p30"),
    Flapjack.Exp.const 0#64]

def body62_19 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p03"),
    Flapjack.Exp.const 0#64]

def body62_20 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p12"),
    Flapjack.Exp.const 0#64]

def body62_21 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p21"),
    Flapjack.Exp.const 0#64]

def body62_22 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p30"),
    Flapjack.Exp.const 0#64]

def body62_23 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p13"),
    Flapjack.Exp.const 0#64]

def body62_24 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p22"),
    Flapjack.Exp.const 0#64]

def body62_25 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p31"),
    Flapjack.Exp.const 0#64]

def body62_26 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p13"),
    Flapjack.Exp.const 0#64]

def body62_27 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p22"),
    Flapjack.Exp.const 0#64]

def body62_28 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p31"),
    Flapjack.Exp.const 0#64]

def body62_29 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p23"),
    Flapjack.Exp.const 0#64]

def body62_30 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p32"),
    Flapjack.Exp.const 0#64]

def body62_31 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p23"),
    Flapjack.Exp.const 0#64]

def body62_32 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p32"),
    Flapjack.Exp.const 0#64]

def body62_33 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p33"),
    Flapjack.Exp.const 0#64]

def body62_34 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "r0", Flapjack.Exp.var Flapjack.VarKind.local "r1",
      Flapjack.Exp.var Flapjack.VarKind.local "r2", Flapjack.Exp.var Flapjack.VarKind.local "r3",
      Flapjack.Exp.var Flapjack.VarKind.local "r4", Flapjack.Exp.var Flapjack.VarKind.local "r5",
      Flapjack.Exp.var Flapjack.VarKind.local "r6", Flapjack.Exp.var Flapjack.VarKind.local "r7"])

def body62_35 : Prog (BitVec 64) :=
.dec ("r7") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p33")]) body62_34

def body62_36 : Prog (BitVec 64) :=
.seq body62_6 body62_35

def body62_37 : Prog (BitVec 64) :=
.seq body62_5 body62_36

def body62_38 : Prog (BitVec 64) :=
.dec ("r6") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "acc") body62_37

def body62_39 : Prog (BitVec 64) :=
.seq body62_3 body62_38

def body62_40 : Prog (BitVec 64) :=
.seq body62_2 body62_39

def body62_41 : Prog (BitVec 64) :=
.seq body62_33 body62_40

def body62_42 : Prog (BitVec 64) :=
.seq body62_3 body62_41

def body62_43 : Prog (BitVec 64) :=
.seq body62_2 body62_42

def body62_44 : Prog (BitVec 64) :=
.seq body62_32 body62_43

def body62_45 : Prog (BitVec 64) :=
.seq body62_3 body62_44

def body62_46 : Prog (BitVec 64) :=
.seq body62_2 body62_45

def body62_47 : Prog (BitVec 64) :=
.seq body62_31 body62_46

def body62_48 : Prog (BitVec 64) :=
.seq body62_6 body62_47

def body62_49 : Prog (BitVec 64) :=
.seq body62_5 body62_48

def body62_50 : Prog (BitVec 64) :=
.dec ("r5") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "acc") body62_49

def body62_51 : Prog (BitVec 64) :=
.seq body62_3 body62_50

def body62_52 : Prog (BitVec 64) :=
.seq body62_2 body62_51

def body62_53 : Prog (BitVec 64) :=
.seq body62_30 body62_52

def body62_54 : Prog (BitVec 64) :=
.seq body62_3 body62_53

def body62_55 : Prog (BitVec 64) :=
.seq body62_2 body62_54

def body62_56 : Prog (BitVec 64) :=
.seq body62_29 body62_55

def body62_57 : Prog (BitVec 64) :=
.seq body62_3 body62_56

def body62_58 : Prog (BitVec 64) :=
.seq body62_2 body62_57

def body62_59 : Prog (BitVec 64) :=
.seq body62_28 body62_58

def body62_60 : Prog (BitVec 64) :=
.seq body62_3 body62_59

def body62_61 : Prog (BitVec 64) :=
.seq body62_2 body62_60

def body62_62 : Prog (BitVec 64) :=
.seq body62_27 body62_61

def body62_63 : Prog (BitVec 64) :=
.seq body62_3 body62_62

def body62_64 : Prog (BitVec 64) :=
.seq body62_2 body62_63

def body62_65 : Prog (BitVec 64) :=
.seq body62_26 body62_64

def body62_66 : Prog (BitVec 64) :=
.seq body62_6 body62_65

def body62_67 : Prog (BitVec 64) :=
.seq body62_5 body62_66

def body62_68 : Prog (BitVec 64) :=
.dec ("r4") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "acc") body62_67

def body62_69 : Prog (BitVec 64) :=
.seq body62_3 body62_68

def body62_70 : Prog (BitVec 64) :=
.seq body62_2 body62_69

def body62_71 : Prog (BitVec 64) :=
.seq body62_25 body62_70

def body62_72 : Prog (BitVec 64) :=
.seq body62_3 body62_71

def body62_73 : Prog (BitVec 64) :=
.seq body62_2 body62_72

def body62_74 : Prog (BitVec 64) :=
.seq body62_24 body62_73

def body62_75 : Prog (BitVec 64) :=
.seq body62_3 body62_74

def body62_76 : Prog (BitVec 64) :=
.seq body62_2 body62_75

def body62_77 : Prog (BitVec 64) :=
.seq body62_23 body62_76

def body62_78 : Prog (BitVec 64) :=
.seq body62_3 body62_77

def body62_79 : Prog (BitVec 64) :=
.seq body62_2 body62_78

def body62_80 : Prog (BitVec 64) :=
.seq body62_22 body62_79

def body62_81 : Prog (BitVec 64) :=
.seq body62_3 body62_80

def body62_82 : Prog (BitVec 64) :=
.seq body62_2 body62_81

def body62_83 : Prog (BitVec 64) :=
.seq body62_21 body62_82

def body62_84 : Prog (BitVec 64) :=
.seq body62_3 body62_83

def body62_85 : Prog (BitVec 64) :=
.seq body62_2 body62_84

def body62_86 : Prog (BitVec 64) :=
.seq body62_20 body62_85

def body62_87 : Prog (BitVec 64) :=
.seq body62_3 body62_86

def body62_88 : Prog (BitVec 64) :=
.seq body62_2 body62_87

def body62_89 : Prog (BitVec 64) :=
.seq body62_19 body62_88

def body62_90 : Prog (BitVec 64) :=
.seq body62_6 body62_89

def body62_91 : Prog (BitVec 64) :=
.seq body62_5 body62_90

def body62_92 : Prog (BitVec 64) :=
.dec ("r3") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "acc") body62_91

def body62_93 : Prog (BitVec 64) :=
.seq body62_3 body62_92

def body62_94 : Prog (BitVec 64) :=
.seq body62_2 body62_93

def body62_95 : Prog (BitVec 64) :=
.seq body62_18 body62_94

def body62_96 : Prog (BitVec 64) :=
.seq body62_3 body62_95

def body62_97 : Prog (BitVec 64) :=
.seq body62_2 body62_96

def body62_98 : Prog (BitVec 64) :=
.seq body62_17 body62_97

def body62_99 : Prog (BitVec 64) :=
.seq body62_3 body62_98

def body62_100 : Prog (BitVec 64) :=
.seq body62_2 body62_99

def body62_101 : Prog (BitVec 64) :=
.seq body62_16 body62_100

def body62_102 : Prog (BitVec 64) :=
.seq body62_3 body62_101

def body62_103 : Prog (BitVec 64) :=
.seq body62_2 body62_102

def body62_104 : Prog (BitVec 64) :=
.seq body62_15 body62_103

def body62_105 : Prog (BitVec 64) :=
.seq body62_3 body62_104

def body62_106 : Prog (BitVec 64) :=
.seq body62_2 body62_105

def body62_107 : Prog (BitVec 64) :=
.seq body62_14 body62_106

def body62_108 : Prog (BitVec 64) :=
.seq body62_3 body62_107

def body62_109 : Prog (BitVec 64) :=
.seq body62_2 body62_108

def body62_110 : Prog (BitVec 64) :=
.seq body62_13 body62_109

def body62_111 : Prog (BitVec 64) :=
.seq body62_3 body62_110

def body62_112 : Prog (BitVec 64) :=
.seq body62_2 body62_111

def body62_113 : Prog (BitVec 64) :=
.seq body62_12 body62_112

def body62_114 : Prog (BitVec 64) :=
.seq body62_6 body62_113

def body62_115 : Prog (BitVec 64) :=
.seq body62_5 body62_114

def body62_116 : Prog (BitVec 64) :=
.dec ("r2") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "acc") body62_115

def body62_117 : Prog (BitVec 64) :=
.seq body62_3 body62_116

def body62_118 : Prog (BitVec 64) :=
.seq body62_2 body62_117

def body62_119 : Prog (BitVec 64) :=
.seq body62_11 body62_118

def body62_120 : Prog (BitVec 64) :=
.seq body62_3 body62_119

def body62_121 : Prog (BitVec 64) :=
.seq body62_2 body62_120

def body62_122 : Prog (BitVec 64) :=
.seq body62_10 body62_121

def body62_123 : Prog (BitVec 64) :=
.seq body62_3 body62_122

def body62_124 : Prog (BitVec 64) :=
.seq body62_2 body62_123

def body62_125 : Prog (BitVec 64) :=
.seq body62_9 body62_124

def body62_126 : Prog (BitVec 64) :=
.seq body62_3 body62_125

def body62_127 : Prog (BitVec 64) :=
.seq body62_2 body62_126

def body62_128 : Prog (BitVec 64) :=
.seq body62_8 body62_127

def body62_129 : Prog (BitVec 64) :=
.seq body62_3 body62_128

def body62_130 : Prog (BitVec 64) :=
.seq body62_2 body62_129

def body62_131 : Prog (BitVec 64) :=
.seq body62_7 body62_130

def body62_132 : Prog (BitVec 64) :=
.seq body62_6 body62_131

def body62_133 : Prog (BitVec 64) :=
.seq body62_5 body62_132

def body62_134 : Prog (BitVec 64) :=
.dec ("r1") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "acc") body62_133

def body62_135 : Prog (BitVec 64) :=
.seq body62_3 body62_134

def body62_136 : Prog (BitVec 64) :=
.seq body62_2 body62_135

def body62_137 : Prog (BitVec 64) :=
.seq body62_4 body62_136

def body62_138 : Prog (BitVec 64) :=
.seq body62_3 body62_137

def body62_139 : Prog (BitVec 64) :=
.seq body62_2 body62_138

def body62_140 : Prog (BitVec 64) :=
.seq body62_1 body62_139

def body62_141 : Prog (BitVec 64) :=
.seq body62_0 body62_140

def body62_142 : Prog (BitVec 64) :=
.dec ("r0") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p00")) body62_141

def body62_143 : Prog (BitVec 64) :=
.dec ("hi") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body62_142

def body62_144 : Prog (BitVec 64) :=
.dec ("acc") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body62_143

def body62_145 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body62_144

def body62_146 : Prog (BitVec 64) :=
.decCall ("p33") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_145

def body62_147 : Prog (BitVec 64) :=
.decCall ("p32") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_146

def body62_148 : Prog (BitVec 64) :=
.decCall ("p23") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_147

def body62_149 : Prog (BitVec 64) :=
.decCall ("p31") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_148

def body62_150 : Prog (BitVec 64) :=
.decCall ("p22") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_149

def body62_151 : Prog (BitVec 64) :=
.decCall ("p13") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_150

def body62_152 : Prog (BitVec 64) :=
.decCall ("p30") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_151

def body62_153 : Prog (BitVec 64) :=
.decCall ("p21") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_152

def body62_154 : Prog (BitVec 64) :=
.decCall ("p12") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_153

def body62_155 : Prog (BitVec 64) :=
.decCall ("p03") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_154

def body62_156 : Prog (BitVec 64) :=
.decCall ("p20") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_155

def body62_157 : Prog (BitVec 64) :=
.decCall ("p11") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_156

def body62_158 : Prog (BitVec 64) :=
.decCall ("p02") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_157

def body62_159 : Prog (BitVec 64) :=
.decCall ("p10") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_158

def body62_160 : Prog (BitVec 64) :=
.decCall ("p01") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_159

def body62_161 : Prog (BitVec 64) :=
.decCall ("p00") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_160

def body62_162 : Prog (BitVec 64) :=
.seq body62_0 body62_1

def body62_163 : Prog (BitVec 64) :=
.seq body62_162 body62_2

def body62_164 : Prog (BitVec 64) :=
.seq body62_163 body62_3

def body62_165 : Prog (BitVec 64) :=
.seq body62_164 body62_4

def body62_166 : Prog (BitVec 64) :=
.seq body62_165 body62_2

def body62_167 : Prog (BitVec 64) :=
.seq body62_166 body62_3

def body62_168 : Prog (BitVec 64) :=
.seq body62_5 body62_6

def body62_169 : Prog (BitVec 64) :=
.seq body62_168 body62_7

def body62_170 : Prog (BitVec 64) :=
.seq body62_169 body62_2

def body62_171 : Prog (BitVec 64) :=
.seq body62_170 body62_3

def body62_172 : Prog (BitVec 64) :=
.seq body62_171 body62_8

def body62_173 : Prog (BitVec 64) :=
.seq body62_172 body62_2

def body62_174 : Prog (BitVec 64) :=
.seq body62_173 body62_3

def body62_175 : Prog (BitVec 64) :=
.seq body62_174 body62_9

def body62_176 : Prog (BitVec 64) :=
.seq body62_175 body62_2

def body62_177 : Prog (BitVec 64) :=
.seq body62_176 body62_3

def body62_178 : Prog (BitVec 64) :=
.seq body62_177 body62_10

def body62_179 : Prog (BitVec 64) :=
.seq body62_178 body62_2

def body62_180 : Prog (BitVec 64) :=
.seq body62_179 body62_3

def body62_181 : Prog (BitVec 64) :=
.seq body62_180 body62_11

def body62_182 : Prog (BitVec 64) :=
.seq body62_181 body62_2

def body62_183 : Prog (BitVec 64) :=
.seq body62_182 body62_3

def body62_184 : Prog (BitVec 64) :=
.seq body62_168 body62_12

def body62_185 : Prog (BitVec 64) :=
.seq body62_184 body62_2

def body62_186 : Prog (BitVec 64) :=
.seq body62_185 body62_3

def body62_187 : Prog (BitVec 64) :=
.seq body62_186 body62_13

def body62_188 : Prog (BitVec 64) :=
.seq body62_187 body62_2

def body62_189 : Prog (BitVec 64) :=
.seq body62_188 body62_3

def body62_190 : Prog (BitVec 64) :=
.seq body62_189 body62_14

def body62_191 : Prog (BitVec 64) :=
.seq body62_190 body62_2

def body62_192 : Prog (BitVec 64) :=
.seq body62_191 body62_3

def body62_193 : Prog (BitVec 64) :=
.seq body62_192 body62_15

def body62_194 : Prog (BitVec 64) :=
.seq body62_193 body62_2

def body62_195 : Prog (BitVec 64) :=
.seq body62_194 body62_3

def body62_196 : Prog (BitVec 64) :=
.seq body62_195 body62_16

def body62_197 : Prog (BitVec 64) :=
.seq body62_196 body62_2

def body62_198 : Prog (BitVec 64) :=
.seq body62_197 body62_3

def body62_199 : Prog (BitVec 64) :=
.seq body62_198 body62_17

def body62_200 : Prog (BitVec 64) :=
.seq body62_199 body62_2

def body62_201 : Prog (BitVec 64) :=
.seq body62_200 body62_3

def body62_202 : Prog (BitVec 64) :=
.seq body62_201 body62_18

def body62_203 : Prog (BitVec 64) :=
.seq body62_202 body62_2

def body62_204 : Prog (BitVec 64) :=
.seq body62_203 body62_3

def body62_205 : Prog (BitVec 64) :=
.seq body62_168 body62_19

def body62_206 : Prog (BitVec 64) :=
.seq body62_205 body62_2

def body62_207 : Prog (BitVec 64) :=
.seq body62_206 body62_3

def body62_208 : Prog (BitVec 64) :=
.seq body62_207 body62_20

def body62_209 : Prog (BitVec 64) :=
.seq body62_208 body62_2

def body62_210 : Prog (BitVec 64) :=
.seq body62_209 body62_3

def body62_211 : Prog (BitVec 64) :=
.seq body62_210 body62_21

def body62_212 : Prog (BitVec 64) :=
.seq body62_211 body62_2

def body62_213 : Prog (BitVec 64) :=
.seq body62_212 body62_3

def body62_214 : Prog (BitVec 64) :=
.seq body62_213 body62_22

def body62_215 : Prog (BitVec 64) :=
.seq body62_214 body62_2

def body62_216 : Prog (BitVec 64) :=
.seq body62_215 body62_3

def body62_217 : Prog (BitVec 64) :=
.seq body62_216 body62_23

def body62_218 : Prog (BitVec 64) :=
.seq body62_217 body62_2

def body62_219 : Prog (BitVec 64) :=
.seq body62_218 body62_3

def body62_220 : Prog (BitVec 64) :=
.seq body62_219 body62_24

def body62_221 : Prog (BitVec 64) :=
.seq body62_220 body62_2

def body62_222 : Prog (BitVec 64) :=
.seq body62_221 body62_3

def body62_223 : Prog (BitVec 64) :=
.seq body62_222 body62_25

def body62_224 : Prog (BitVec 64) :=
.seq body62_223 body62_2

def body62_225 : Prog (BitVec 64) :=
.seq body62_224 body62_3

def body62_226 : Prog (BitVec 64) :=
.seq body62_168 body62_26

def body62_227 : Prog (BitVec 64) :=
.seq body62_226 body62_2

def body62_228 : Prog (BitVec 64) :=
.seq body62_227 body62_3

def body62_229 : Prog (BitVec 64) :=
.seq body62_228 body62_27

def body62_230 : Prog (BitVec 64) :=
.seq body62_229 body62_2

def body62_231 : Prog (BitVec 64) :=
.seq body62_230 body62_3

def body62_232 : Prog (BitVec 64) :=
.seq body62_231 body62_28

def body62_233 : Prog (BitVec 64) :=
.seq body62_232 body62_2

def body62_234 : Prog (BitVec 64) :=
.seq body62_233 body62_3

def body62_235 : Prog (BitVec 64) :=
.seq body62_234 body62_29

def body62_236 : Prog (BitVec 64) :=
.seq body62_235 body62_2

def body62_237 : Prog (BitVec 64) :=
.seq body62_236 body62_3

def body62_238 : Prog (BitVec 64) :=
.seq body62_237 body62_30

def body62_239 : Prog (BitVec 64) :=
.seq body62_238 body62_2

def body62_240 : Prog (BitVec 64) :=
.seq body62_239 body62_3

def body62_241 : Prog (BitVec 64) :=
.seq body62_168 body62_31

def body62_242 : Prog (BitVec 64) :=
.seq body62_241 body62_2

def body62_243 : Prog (BitVec 64) :=
.seq body62_242 body62_3

def body62_244 : Prog (BitVec 64) :=
.seq body62_243 body62_32

def body62_245 : Prog (BitVec 64) :=
.seq body62_244 body62_2

def body62_246 : Prog (BitVec 64) :=
.seq body62_245 body62_3

def body62_247 : Prog (BitVec 64) :=
.seq body62_246 body62_33

def body62_248 : Prog (BitVec 64) :=
.seq body62_247 body62_2

def body62_249 : Prog (BitVec 64) :=
.seq body62_248 body62_3

def body62_250 : Prog (BitVec 64) :=
.seq body62_168 body62_35

def body62_251 : Prog (BitVec 64) :=
.dec ("r6") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "acc") body62_250

def body62_252 : Prog (BitVec 64) :=
.seq body62_249 body62_251

def body62_253 : Prog (BitVec 64) :=
.dec ("r5") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "acc") body62_252

def body62_254 : Prog (BitVec 64) :=
.seq body62_240 body62_253

def body62_255 : Prog (BitVec 64) :=
.dec ("r4") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "acc") body62_254

def body62_256 : Prog (BitVec 64) :=
.seq body62_225 body62_255

def body62_257 : Prog (BitVec 64) :=
.dec ("r3") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "acc") body62_256

def body62_258 : Prog (BitVec 64) :=
.seq body62_204 body62_257

def body62_259 : Prog (BitVec 64) :=
.dec ("r2") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "acc") body62_258

def body62_260 : Prog (BitVec 64) :=
.seq body62_183 body62_259

def body62_261 : Prog (BitVec 64) :=
.dec ("r1") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "acc") body62_260

def body62_262 : Prog (BitVec 64) :=
.seq body62_167 body62_261

def body62_263 : Prog (BitVec 64) :=
.dec ("r0") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p00")) body62_262

def body62_264 : Prog (BitVec 64) :=
.dec ("hi") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body62_263

def body62_265 : Prog (BitVec 64) :=
.dec ("acc") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body62_264

def body62_266 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body62_265

def body62_267 : Prog (BitVec 64) :=
.decCall ("p33") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_266

def body62_268 : Prog (BitVec 64) :=
.decCall ("p32") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_267

def body62_269 : Prog (BitVec 64) :=
.decCall ("p23") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_268

def body62_270 : Prog (BitVec 64) :=
.decCall ("p31") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_269

def body62_271 : Prog (BitVec 64) :=
.decCall ("p22") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_270

def body62_272 : Prog (BitVec 64) :=
.decCall ("p13") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_271

def body62_273 : Prog (BitVec 64) :=
.decCall ("p30") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_272

def body62_274 : Prog (BitVec 64) :=
.decCall ("p21") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_273

def body62_275 : Prog (BitVec 64) :=
.decCall ("p12") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_274

def body62_276 : Prog (BitVec 64) :=
.decCall ("p03") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_275

def body62_277 : Prog (BitVec 64) :=
.decCall ("p20") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_276

def body62_278 : Prog (BitVec 64) :=
.decCall ("p11") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_277

def body62_279 : Prog (BitVec 64) :=
.decCall ("p02") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_278

def body62_280 : Prog (BitVec 64) :=
.decCall ("p10") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_279

def body62_281 : Prog (BitVec 64) :=
.decCall ("p01") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_280

def body62_282 : Prog (BitVec 64) :=
.decCall ("p00") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body62_281

def originalData62 : Decl (BitVec 64) :=
.function { name := "u256_mul_full", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body62_161, returnShape := (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData62 : Decl (BitVec 64) :=
.function { name := "u256_mul_full", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body62_282, returnShape := (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original62 := Pancake.PanLang.declToHOL originalData62
def simplified62 := Pancake.PanLang.declToHOL simplifiedData62
end InitECandidate.Proofs.FrontendStages.Declarations
