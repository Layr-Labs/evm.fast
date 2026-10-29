import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data653
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate635
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody653_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b0"])

def globalBody653_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "L"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "L",
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.var Flapjack.VarKind.local "pr", Flapjack.Exp.const 4294967295#64]])

def globalBody653_2 : Prog (BitVec 64) :=
.seq globalBody653_0 globalBody653_1

def globalBody653_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "H"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "H",
      Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "pr") (Flapjack.Exp.const 32#64)])

def globalBody653_4 : Prog (BitVec 64) :=
.seq globalBody653_2 globalBody653_3

def globalBody653_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "L", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody653_6 : Prog (BitVec 64) :=
.seq globalBody653_4 globalBody653_5

def globalBody653_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "dg"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody653_8 : Prog (BitVec 64) :=
.seq globalBody653_6 globalBody653_7

def globalBody653_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "m0"
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "dg", Flapjack.Exp.const 3834012553#64],
      Flapjack.Exp.const 4294967295#64])

def globalBody653_10 : Prog (BitVec 64) :=
.seq globalBody653_8 globalBody653_9

def globalBody653_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m0", Flapjack.Exp.const 3632069959#64])

def globalBody653_12 : Prog (BitVec 64) :=
.seq globalBody653_10 globalBody653_11

def globalBody653_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col2"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "dg",
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.var Flapjack.VarKind.local "pr", Flapjack.Exp.const 4294967295#64]])

def globalBody653_14 : Prog (BitVec 64) :=
.seq globalBody653_12 globalBody653_13

def globalBody653_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "col") (Flapjack.Exp.const 32#64),
      Flapjack.Exp.var Flapjack.VarKind.local "H",
      Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "col2") (Flapjack.Exp.const 32#64),
      Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "pr") (Flapjack.Exp.const 32#64)])

def globalBody653_16 : Prog (BitVec 64) :=
.seq globalBody653_14 globalBody653_15

def globalBody653_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "L" (Flapjack.Exp.const 0#64)

def globalBody653_18 : Prog (BitVec 64) :=
.seq globalBody653_16 globalBody653_17

def globalBody653_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "H" (Flapjack.Exp.const 0#64)

def globalBody653_20 : Prog (BitVec 64) :=
.seq globalBody653_18 globalBody653_19

def globalBody653_21 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b1"])

def globalBody653_22 : Prog (BitVec 64) :=
.seq globalBody653_20 globalBody653_21

def globalBody653_23 : Prog (BitVec 64) :=
.seq globalBody653_22 globalBody653_1

def globalBody653_24 : Prog (BitVec 64) :=
.seq globalBody653_23 globalBody653_3

def globalBody653_25 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b0"])

def globalBody653_26 : Prog (BitVec 64) :=
.seq globalBody653_24 globalBody653_25

def globalBody653_27 : Prog (BitVec 64) :=
.seq globalBody653_26 globalBody653_1

def globalBody653_28 : Prog (BitVec 64) :=
.seq globalBody653_27 globalBody653_3

def globalBody653_29 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m0", Flapjack.Exp.const 1008765974#64])

def globalBody653_30 : Prog (BitVec 64) :=
.seq globalBody653_28 globalBody653_29

def globalBody653_31 : Prog (BitVec 64) :=
.seq globalBody653_30 globalBody653_1

def globalBody653_32 : Prog (BitVec 64) :=
.seq globalBody653_31 globalBody653_3

def globalBody653_33 : Prog (BitVec 64) :=
.seq globalBody653_32 globalBody653_5

def globalBody653_34 : Prog (BitVec 64) :=
.seq globalBody653_33 globalBody653_7

def globalBody653_35 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "m1"
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "dg", Flapjack.Exp.const 3834012553#64],
      Flapjack.Exp.const 4294967295#64])

def globalBody653_36 : Prog (BitVec 64) :=
.seq globalBody653_34 globalBody653_35

def globalBody653_37 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m1", Flapjack.Exp.const 3632069959#64])

def globalBody653_38 : Prog (BitVec 64) :=
.seq globalBody653_36 globalBody653_37

def globalBody653_39 : Prog (BitVec 64) :=
.seq globalBody653_38 globalBody653_13

def globalBody653_40 : Prog (BitVec 64) :=
.seq globalBody653_39 globalBody653_15

def globalBody653_41 : Prog (BitVec 64) :=
.seq globalBody653_40 globalBody653_17

def globalBody653_42 : Prog (BitVec 64) :=
.seq globalBody653_41 globalBody653_19

def globalBody653_43 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b2"])

def globalBody653_44 : Prog (BitVec 64) :=
.seq globalBody653_42 globalBody653_43

def globalBody653_45 : Prog (BitVec 64) :=
.seq globalBody653_44 globalBody653_1

def globalBody653_46 : Prog (BitVec 64) :=
.seq globalBody653_45 globalBody653_3

def globalBody653_47 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b1"])

def globalBody653_48 : Prog (BitVec 64) :=
.seq globalBody653_46 globalBody653_47

def globalBody653_49 : Prog (BitVec 64) :=
.seq globalBody653_48 globalBody653_1

def globalBody653_50 : Prog (BitVec 64) :=
.seq globalBody653_49 globalBody653_3

def globalBody653_51 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "b0"])

def globalBody653_52 : Prog (BitVec 64) :=
.seq globalBody653_50 globalBody653_51

def globalBody653_53 : Prog (BitVec 64) :=
.seq globalBody653_52 globalBody653_1

def globalBody653_54 : Prog (BitVec 64) :=
.seq globalBody653_53 globalBody653_3

def globalBody653_55 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m0", Flapjack.Exp.const 1752287885#64])

def globalBody653_56 : Prog (BitVec 64) :=
.seq globalBody653_54 globalBody653_55

def globalBody653_57 : Prog (BitVec 64) :=
.seq globalBody653_56 globalBody653_1

def globalBody653_58 : Prog (BitVec 64) :=
.seq globalBody653_57 globalBody653_3

def globalBody653_59 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m1", Flapjack.Exp.const 1008765974#64])

def globalBody653_60 : Prog (BitVec 64) :=
.seq globalBody653_58 globalBody653_59

def globalBody653_61 : Prog (BitVec 64) :=
.seq globalBody653_60 globalBody653_1

def globalBody653_62 : Prog (BitVec 64) :=
.seq globalBody653_61 globalBody653_3

def globalBody653_63 : Prog (BitVec 64) :=
.seq globalBody653_62 globalBody653_5

def globalBody653_64 : Prog (BitVec 64) :=
.seq globalBody653_63 globalBody653_7

def globalBody653_65 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "m2"
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "dg", Flapjack.Exp.const 3834012553#64],
      Flapjack.Exp.const 4294967295#64])

def globalBody653_66 : Prog (BitVec 64) :=
.seq globalBody653_64 globalBody653_65

def globalBody653_67 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m2", Flapjack.Exp.const 3632069959#64])

def globalBody653_68 : Prog (BitVec 64) :=
.seq globalBody653_66 globalBody653_67

def globalBody653_69 : Prog (BitVec 64) :=
.seq globalBody653_68 globalBody653_13

def globalBody653_70 : Prog (BitVec 64) :=
.seq globalBody653_69 globalBody653_15

def globalBody653_71 : Prog (BitVec 64) :=
.seq globalBody653_70 globalBody653_17

def globalBody653_72 : Prog (BitVec 64) :=
.seq globalBody653_71 globalBody653_19

def globalBody653_73 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b3"])

def globalBody653_74 : Prog (BitVec 64) :=
.seq globalBody653_72 globalBody653_73

def globalBody653_75 : Prog (BitVec 64) :=
.seq globalBody653_74 globalBody653_1

def globalBody653_76 : Prog (BitVec 64) :=
.seq globalBody653_75 globalBody653_3

def globalBody653_77 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b2"])

def globalBody653_78 : Prog (BitVec 64) :=
.seq globalBody653_76 globalBody653_77

def globalBody653_79 : Prog (BitVec 64) :=
.seq globalBody653_78 globalBody653_1

def globalBody653_80 : Prog (BitVec 64) :=
.seq globalBody653_79 globalBody653_3

def globalBody653_81 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "b1"])

def globalBody653_82 : Prog (BitVec 64) :=
.seq globalBody653_80 globalBody653_81

def globalBody653_83 : Prog (BitVec 64) :=
.seq globalBody653_82 globalBody653_1

def globalBody653_84 : Prog (BitVec 64) :=
.seq globalBody653_83 globalBody653_3

def globalBody653_85 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "b0"])

def globalBody653_86 : Prog (BitVec 64) :=
.seq globalBody653_84 globalBody653_85

def globalBody653_87 : Prog (BitVec 64) :=
.seq globalBody653_86 globalBody653_1

def globalBody653_88 : Prog (BitVec 64) :=
.seq globalBody653_87 globalBody653_3

def globalBody653_89 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m0", Flapjack.Exp.const 2541841041#64])

def globalBody653_90 : Prog (BitVec 64) :=
.seq globalBody653_88 globalBody653_89

def globalBody653_91 : Prog (BitVec 64) :=
.seq globalBody653_90 globalBody653_1

def globalBody653_92 : Prog (BitVec 64) :=
.seq globalBody653_91 globalBody653_3

def globalBody653_93 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m1", Flapjack.Exp.const 1752287885#64])

def globalBody653_94 : Prog (BitVec 64) :=
.seq globalBody653_92 globalBody653_93

def globalBody653_95 : Prog (BitVec 64) :=
.seq globalBody653_94 globalBody653_1

def globalBody653_96 : Prog (BitVec 64) :=
.seq globalBody653_95 globalBody653_3

def globalBody653_97 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m2", Flapjack.Exp.const 1008765974#64])

def globalBody653_98 : Prog (BitVec 64) :=
.seq globalBody653_96 globalBody653_97

def globalBody653_99 : Prog (BitVec 64) :=
.seq globalBody653_98 globalBody653_1

def globalBody653_100 : Prog (BitVec 64) :=
.seq globalBody653_99 globalBody653_3

def globalBody653_101 : Prog (BitVec 64) :=
.seq globalBody653_100 globalBody653_5

def globalBody653_102 : Prog (BitVec 64) :=
.seq globalBody653_101 globalBody653_7

def globalBody653_103 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "m3"
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "dg", Flapjack.Exp.const 3834012553#64],
      Flapjack.Exp.const 4294967295#64])

def globalBody653_104 : Prog (BitVec 64) :=
.seq globalBody653_102 globalBody653_103

def globalBody653_105 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m3", Flapjack.Exp.const 3632069959#64])

def globalBody653_106 : Prog (BitVec 64) :=
.seq globalBody653_104 globalBody653_105

def globalBody653_107 : Prog (BitVec 64) :=
.seq globalBody653_106 globalBody653_13

def globalBody653_108 : Prog (BitVec 64) :=
.seq globalBody653_107 globalBody653_15

def globalBody653_109 : Prog (BitVec 64) :=
.seq globalBody653_108 globalBody653_17

def globalBody653_110 : Prog (BitVec 64) :=
.seq globalBody653_109 globalBody653_19

def globalBody653_111 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b4"])

def globalBody653_112 : Prog (BitVec 64) :=
.seq globalBody653_110 globalBody653_111

def globalBody653_113 : Prog (BitVec 64) :=
.seq globalBody653_112 globalBody653_1

def globalBody653_114 : Prog (BitVec 64) :=
.seq globalBody653_113 globalBody653_3

def globalBody653_115 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b3"])

def globalBody653_116 : Prog (BitVec 64) :=
.seq globalBody653_114 globalBody653_115

def globalBody653_117 : Prog (BitVec 64) :=
.seq globalBody653_116 globalBody653_1

def globalBody653_118 : Prog (BitVec 64) :=
.seq globalBody653_117 globalBody653_3

def globalBody653_119 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "b2"])

def globalBody653_120 : Prog (BitVec 64) :=
.seq globalBody653_118 globalBody653_119

def globalBody653_121 : Prog (BitVec 64) :=
.seq globalBody653_120 globalBody653_1

def globalBody653_122 : Prog (BitVec 64) :=
.seq globalBody653_121 globalBody653_3

def globalBody653_123 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "b1"])

def globalBody653_124 : Prog (BitVec 64) :=
.seq globalBody653_122 globalBody653_123

def globalBody653_125 : Prog (BitVec 64) :=
.seq globalBody653_124 globalBody653_1

def globalBody653_126 : Prog (BitVec 64) :=
.seq globalBody653_125 globalBody653_3

def globalBody653_127 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "b0"])

def globalBody653_128 : Prog (BitVec 64) :=
.seq globalBody653_126 globalBody653_127

def globalBody653_129 : Prog (BitVec 64) :=
.seq globalBody653_128 globalBody653_1

def globalBody653_130 : Prog (BitVec 64) :=
.seq globalBody653_129 globalBody653_3

def globalBody653_131 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m0", Flapjack.Exp.const 2172737629#64])

def globalBody653_132 : Prog (BitVec 64) :=
.seq globalBody653_130 globalBody653_131

def globalBody653_133 : Prog (BitVec 64) :=
.seq globalBody653_132 globalBody653_1

def globalBody653_134 : Prog (BitVec 64) :=
.seq globalBody653_133 globalBody653_3

def globalBody653_135 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m1", Flapjack.Exp.const 2541841041#64])

def globalBody653_136 : Prog (BitVec 64) :=
.seq globalBody653_134 globalBody653_135

def globalBody653_137 : Prog (BitVec 64) :=
.seq globalBody653_136 globalBody653_1

def globalBody653_138 : Prog (BitVec 64) :=
.seq globalBody653_137 globalBody653_3

def globalBody653_139 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m2", Flapjack.Exp.const 1752287885#64])

def globalBody653_140 : Prog (BitVec 64) :=
.seq globalBody653_138 globalBody653_139

def globalBody653_141 : Prog (BitVec 64) :=
.seq globalBody653_140 globalBody653_1

def globalBody653_142 : Prog (BitVec 64) :=
.seq globalBody653_141 globalBody653_3

def globalBody653_143 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m3", Flapjack.Exp.const 1008765974#64])

def globalBody653_144 : Prog (BitVec 64) :=
.seq globalBody653_142 globalBody653_143

def globalBody653_145 : Prog (BitVec 64) :=
.seq globalBody653_144 globalBody653_1

def globalBody653_146 : Prog (BitVec 64) :=
.seq globalBody653_145 globalBody653_3

def globalBody653_147 : Prog (BitVec 64) :=
.seq globalBody653_146 globalBody653_5

def globalBody653_148 : Prog (BitVec 64) :=
.seq globalBody653_147 globalBody653_7

def globalBody653_149 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "m4"
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "dg", Flapjack.Exp.const 3834012553#64],
      Flapjack.Exp.const 4294967295#64])

def globalBody653_150 : Prog (BitVec 64) :=
.seq globalBody653_148 globalBody653_149

def globalBody653_151 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m4", Flapjack.Exp.const 3632069959#64])

def globalBody653_152 : Prog (BitVec 64) :=
.seq globalBody653_150 globalBody653_151

def globalBody653_153 : Prog (BitVec 64) :=
.seq globalBody653_152 globalBody653_13

def globalBody653_154 : Prog (BitVec 64) :=
.seq globalBody653_153 globalBody653_15

def globalBody653_155 : Prog (BitVec 64) :=
.seq globalBody653_154 globalBody653_17

def globalBody653_156 : Prog (BitVec 64) :=
.seq globalBody653_155 globalBody653_19

def globalBody653_157 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b5"])

def globalBody653_158 : Prog (BitVec 64) :=
.seq globalBody653_156 globalBody653_157

def globalBody653_159 : Prog (BitVec 64) :=
.seq globalBody653_158 globalBody653_1

def globalBody653_160 : Prog (BitVec 64) :=
.seq globalBody653_159 globalBody653_3

def globalBody653_161 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b4"])

def globalBody653_162 : Prog (BitVec 64) :=
.seq globalBody653_160 globalBody653_161

def globalBody653_163 : Prog (BitVec 64) :=
.seq globalBody653_162 globalBody653_1

def globalBody653_164 : Prog (BitVec 64) :=
.seq globalBody653_163 globalBody653_3

def globalBody653_165 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "b3"])

def globalBody653_166 : Prog (BitVec 64) :=
.seq globalBody653_164 globalBody653_165

def globalBody653_167 : Prog (BitVec 64) :=
.seq globalBody653_166 globalBody653_1

def globalBody653_168 : Prog (BitVec 64) :=
.seq globalBody653_167 globalBody653_3

def globalBody653_169 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "b2"])

def globalBody653_170 : Prog (BitVec 64) :=
.seq globalBody653_168 globalBody653_169

def globalBody653_171 : Prog (BitVec 64) :=
.seq globalBody653_170 globalBody653_1

def globalBody653_172 : Prog (BitVec 64) :=
.seq globalBody653_171 globalBody653_3

def globalBody653_173 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "b1"])

def globalBody653_174 : Prog (BitVec 64) :=
.seq globalBody653_172 globalBody653_173

def globalBody653_175 : Prog (BitVec 64) :=
.seq globalBody653_174 globalBody653_1

def globalBody653_176 : Prog (BitVec 64) :=
.seq globalBody653_175 globalBody653_3

def globalBody653_177 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "b0"])

def globalBody653_178 : Prog (BitVec 64) :=
.seq globalBody653_176 globalBody653_177

def globalBody653_179 : Prog (BitVec 64) :=
.seq globalBody653_178 globalBody653_1

def globalBody653_180 : Prog (BitVec 64) :=
.seq globalBody653_179 globalBody653_3

def globalBody653_181 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m0", Flapjack.Exp.const 3092268470#64])

def globalBody653_182 : Prog (BitVec 64) :=
.seq globalBody653_180 globalBody653_181

def globalBody653_183 : Prog (BitVec 64) :=
.seq globalBody653_182 globalBody653_1

def globalBody653_184 : Prog (BitVec 64) :=
.seq globalBody653_183 globalBody653_3

def globalBody653_185 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m1", Flapjack.Exp.const 2172737629#64])

def globalBody653_186 : Prog (BitVec 64) :=
.seq globalBody653_184 globalBody653_185

def globalBody653_187 : Prog (BitVec 64) :=
.seq globalBody653_186 globalBody653_1

def globalBody653_188 : Prog (BitVec 64) :=
.seq globalBody653_187 globalBody653_3

def globalBody653_189 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m2", Flapjack.Exp.const 2541841041#64])

def globalBody653_190 : Prog (BitVec 64) :=
.seq globalBody653_188 globalBody653_189

def globalBody653_191 : Prog (BitVec 64) :=
.seq globalBody653_190 globalBody653_1

def globalBody653_192 : Prog (BitVec 64) :=
.seq globalBody653_191 globalBody653_3

def globalBody653_193 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m3", Flapjack.Exp.const 1752287885#64])

def globalBody653_194 : Prog (BitVec 64) :=
.seq globalBody653_192 globalBody653_193

def globalBody653_195 : Prog (BitVec 64) :=
.seq globalBody653_194 globalBody653_1

def globalBody653_196 : Prog (BitVec 64) :=
.seq globalBody653_195 globalBody653_3

def globalBody653_197 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m4", Flapjack.Exp.const 1008765974#64])

def globalBody653_198 : Prog (BitVec 64) :=
.seq globalBody653_196 globalBody653_197

def globalBody653_199 : Prog (BitVec 64) :=
.seq globalBody653_198 globalBody653_1

def globalBody653_200 : Prog (BitVec 64) :=
.seq globalBody653_199 globalBody653_3

def globalBody653_201 : Prog (BitVec 64) :=
.seq globalBody653_200 globalBody653_5

def globalBody653_202 : Prog (BitVec 64) :=
.seq globalBody653_201 globalBody653_7

def globalBody653_203 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "m5"
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "dg", Flapjack.Exp.const 3834012553#64],
      Flapjack.Exp.const 4294967295#64])

def globalBody653_204 : Prog (BitVec 64) :=
.seq globalBody653_202 globalBody653_203

def globalBody653_205 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m5", Flapjack.Exp.const 3632069959#64])

def globalBody653_206 : Prog (BitVec 64) :=
.seq globalBody653_204 globalBody653_205

def globalBody653_207 : Prog (BitVec 64) :=
.seq globalBody653_206 globalBody653_13

def globalBody653_208 : Prog (BitVec 64) :=
.seq globalBody653_207 globalBody653_15

def globalBody653_209 : Prog (BitVec 64) :=
.seq globalBody653_208 globalBody653_17

def globalBody653_210 : Prog (BitVec 64) :=
.seq globalBody653_209 globalBody653_19

def globalBody653_211 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b6"])

def globalBody653_212 : Prog (BitVec 64) :=
.seq globalBody653_210 globalBody653_211

def globalBody653_213 : Prog (BitVec 64) :=
.seq globalBody653_212 globalBody653_1

def globalBody653_214 : Prog (BitVec 64) :=
.seq globalBody653_213 globalBody653_3

def globalBody653_215 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b5"])

def globalBody653_216 : Prog (BitVec 64) :=
.seq globalBody653_214 globalBody653_215

def globalBody653_217 : Prog (BitVec 64) :=
.seq globalBody653_216 globalBody653_1

def globalBody653_218 : Prog (BitVec 64) :=
.seq globalBody653_217 globalBody653_3

def globalBody653_219 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "b4"])

def globalBody653_220 : Prog (BitVec 64) :=
.seq globalBody653_218 globalBody653_219

def globalBody653_221 : Prog (BitVec 64) :=
.seq globalBody653_220 globalBody653_1

def globalBody653_222 : Prog (BitVec 64) :=
.seq globalBody653_221 globalBody653_3

def globalBody653_223 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "b3"])

def globalBody653_224 : Prog (BitVec 64) :=
.seq globalBody653_222 globalBody653_223

def globalBody653_225 : Prog (BitVec 64) :=
.seq globalBody653_224 globalBody653_1

def globalBody653_226 : Prog (BitVec 64) :=
.seq globalBody653_225 globalBody653_3

def globalBody653_227 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "b2"])

def globalBody653_228 : Prog (BitVec 64) :=
.seq globalBody653_226 globalBody653_227

def globalBody653_229 : Prog (BitVec 64) :=
.seq globalBody653_228 globalBody653_1

def globalBody653_230 : Prog (BitVec 64) :=
.seq globalBody653_229 globalBody653_3

def globalBody653_231 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "b1"])

def globalBody653_232 : Prog (BitVec 64) :=
.seq globalBody653_230 globalBody653_231

def globalBody653_233 : Prog (BitVec 64) :=
.seq globalBody653_232 globalBody653_1

def globalBody653_234 : Prog (BitVec 64) :=
.seq globalBody653_233 globalBody653_3

def globalBody653_235 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "b0"])

def globalBody653_236 : Prog (BitVec 64) :=
.seq globalBody653_234 globalBody653_235

def globalBody653_237 : Prog (BitVec 64) :=
.seq globalBody653_236 globalBody653_1

def globalBody653_238 : Prog (BitVec 64) :=
.seq globalBody653_237 globalBody653_3

def globalBody653_239 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m0", Flapjack.Exp.const 3778125865#64])

def globalBody653_240 : Prog (BitVec 64) :=
.seq globalBody653_238 globalBody653_239

def globalBody653_241 : Prog (BitVec 64) :=
.seq globalBody653_240 globalBody653_1

def globalBody653_242 : Prog (BitVec 64) :=
.seq globalBody653_241 globalBody653_3

def globalBody653_243 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m1", Flapjack.Exp.const 3092268470#64])

def globalBody653_244 : Prog (BitVec 64) :=
.seq globalBody653_242 globalBody653_243

def globalBody653_245 : Prog (BitVec 64) :=
.seq globalBody653_244 globalBody653_1

def globalBody653_246 : Prog (BitVec 64) :=
.seq globalBody653_245 globalBody653_3

def globalBody653_247 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m2", Flapjack.Exp.const 2172737629#64])

def globalBody653_248 : Prog (BitVec 64) :=
.seq globalBody653_246 globalBody653_247

def globalBody653_249 : Prog (BitVec 64) :=
.seq globalBody653_248 globalBody653_1

def globalBody653_250 : Prog (BitVec 64) :=
.seq globalBody653_249 globalBody653_3

def globalBody653_251 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m3", Flapjack.Exp.const 2541841041#64])

def globalBody653_252 : Prog (BitVec 64) :=
.seq globalBody653_250 globalBody653_251

def globalBody653_253 : Prog (BitVec 64) :=
.seq globalBody653_252 globalBody653_1

def globalBody653_254 : Prog (BitVec 64) :=
.seq globalBody653_253 globalBody653_3

def globalBody653_255 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m4", Flapjack.Exp.const 1752287885#64])

def globalBody653_256 : Prog (BitVec 64) :=
.seq globalBody653_254 globalBody653_255

def globalBody653_257 : Prog (BitVec 64) :=
.seq globalBody653_256 globalBody653_1

def globalBody653_258 : Prog (BitVec 64) :=
.seq globalBody653_257 globalBody653_3

def globalBody653_259 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m5", Flapjack.Exp.const 1008765974#64])

def globalBody653_260 : Prog (BitVec 64) :=
.seq globalBody653_258 globalBody653_259

def globalBody653_261 : Prog (BitVec 64) :=
.seq globalBody653_260 globalBody653_1

def globalBody653_262 : Prog (BitVec 64) :=
.seq globalBody653_261 globalBody653_3

def globalBody653_263 : Prog (BitVec 64) :=
.seq globalBody653_262 globalBody653_5

def globalBody653_264 : Prog (BitVec 64) :=
.seq globalBody653_263 globalBody653_7

def globalBody653_265 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "m6"
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "dg", Flapjack.Exp.const 3834012553#64],
      Flapjack.Exp.const 4294967295#64])

def globalBody653_266 : Prog (BitVec 64) :=
.seq globalBody653_264 globalBody653_265

def globalBody653_267 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m6", Flapjack.Exp.const 3632069959#64])

def globalBody653_268 : Prog (BitVec 64) :=
.seq globalBody653_266 globalBody653_267

def globalBody653_269 : Prog (BitVec 64) :=
.seq globalBody653_268 globalBody653_13

def globalBody653_270 : Prog (BitVec 64) :=
.seq globalBody653_269 globalBody653_15

def globalBody653_271 : Prog (BitVec 64) :=
.seq globalBody653_270 globalBody653_17

def globalBody653_272 : Prog (BitVec 64) :=
.seq globalBody653_271 globalBody653_19

def globalBody653_273 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b7"])

def globalBody653_274 : Prog (BitVec 64) :=
.seq globalBody653_272 globalBody653_273

def globalBody653_275 : Prog (BitVec 64) :=
.seq globalBody653_274 globalBody653_1

def globalBody653_276 : Prog (BitVec 64) :=
.seq globalBody653_275 globalBody653_3

def globalBody653_277 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b6"])

def globalBody653_278 : Prog (BitVec 64) :=
.seq globalBody653_276 globalBody653_277

def globalBody653_279 : Prog (BitVec 64) :=
.seq globalBody653_278 globalBody653_1

def globalBody653_280 : Prog (BitVec 64) :=
.seq globalBody653_279 globalBody653_3

def globalBody653_281 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "b5"])

def globalBody653_282 : Prog (BitVec 64) :=
.seq globalBody653_280 globalBody653_281

def globalBody653_283 : Prog (BitVec 64) :=
.seq globalBody653_282 globalBody653_1

def globalBody653_284 : Prog (BitVec 64) :=
.seq globalBody653_283 globalBody653_3

def globalBody653_285 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "b4"])

def globalBody653_286 : Prog (BitVec 64) :=
.seq globalBody653_284 globalBody653_285

def globalBody653_287 : Prog (BitVec 64) :=
.seq globalBody653_286 globalBody653_1

def globalBody653_288 : Prog (BitVec 64) :=
.seq globalBody653_287 globalBody653_3

def globalBody653_289 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "b3"])

def globalBody653_290 : Prog (BitVec 64) :=
.seq globalBody653_288 globalBody653_289

def globalBody653_291 : Prog (BitVec 64) :=
.seq globalBody653_290 globalBody653_1

def globalBody653_292 : Prog (BitVec 64) :=
.seq globalBody653_291 globalBody653_3

def globalBody653_293 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "b2"])

def globalBody653_294 : Prog (BitVec 64) :=
.seq globalBody653_292 globalBody653_293

def globalBody653_295 : Prog (BitVec 64) :=
.seq globalBody653_294 globalBody653_1

def globalBody653_296 : Prog (BitVec 64) :=
.seq globalBody653_295 globalBody653_3

def globalBody653_297 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "b1"])

def globalBody653_298 : Prog (BitVec 64) :=
.seq globalBody653_296 globalBody653_297

def globalBody653_299 : Prog (BitVec 64) :=
.seq globalBody653_298 globalBody653_1

def globalBody653_300 : Prog (BitVec 64) :=
.seq globalBody653_299 globalBody653_3

def globalBody653_301 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "b0"])

def globalBody653_302 : Prog (BitVec 64) :=
.seq globalBody653_300 globalBody653_301

def globalBody653_303 : Prog (BitVec 64) :=
.seq globalBody653_302 globalBody653_1

def globalBody653_304 : Prog (BitVec 64) :=
.seq globalBody653_303 globalBody653_3

def globalBody653_305 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m0", Flapjack.Exp.const 811880050#64])

def globalBody653_306 : Prog (BitVec 64) :=
.seq globalBody653_304 globalBody653_305

def globalBody653_307 : Prog (BitVec 64) :=
.seq globalBody653_306 globalBody653_1

def globalBody653_308 : Prog (BitVec 64) :=
.seq globalBody653_307 globalBody653_3

def globalBody653_309 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m1", Flapjack.Exp.const 3778125865#64])

def globalBody653_310 : Prog (BitVec 64) :=
.seq globalBody653_308 globalBody653_309

def globalBody653_311 : Prog (BitVec 64) :=
.seq globalBody653_310 globalBody653_1

def globalBody653_312 : Prog (BitVec 64) :=
.seq globalBody653_311 globalBody653_3

def globalBody653_313 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m2", Flapjack.Exp.const 3092268470#64])

def globalBody653_314 : Prog (BitVec 64) :=
.seq globalBody653_312 globalBody653_313

def globalBody653_315 : Prog (BitVec 64) :=
.seq globalBody653_314 globalBody653_1

def globalBody653_316 : Prog (BitVec 64) :=
.seq globalBody653_315 globalBody653_3

def globalBody653_317 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m3", Flapjack.Exp.const 2172737629#64])

def globalBody653_318 : Prog (BitVec 64) :=
.seq globalBody653_316 globalBody653_317

def globalBody653_319 : Prog (BitVec 64) :=
.seq globalBody653_318 globalBody653_1

def globalBody653_320 : Prog (BitVec 64) :=
.seq globalBody653_319 globalBody653_3

def globalBody653_321 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m4", Flapjack.Exp.const 2541841041#64])

def globalBody653_322 : Prog (BitVec 64) :=
.seq globalBody653_320 globalBody653_321

def globalBody653_323 : Prog (BitVec 64) :=
.seq globalBody653_322 globalBody653_1

def globalBody653_324 : Prog (BitVec 64) :=
.seq globalBody653_323 globalBody653_3

def globalBody653_325 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m5", Flapjack.Exp.const 1752287885#64])

def globalBody653_326 : Prog (BitVec 64) :=
.seq globalBody653_324 globalBody653_325

def globalBody653_327 : Prog (BitVec 64) :=
.seq globalBody653_326 globalBody653_1

def globalBody653_328 : Prog (BitVec 64) :=
.seq globalBody653_327 globalBody653_3

def globalBody653_329 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m6", Flapjack.Exp.const 1008765974#64])

def globalBody653_330 : Prog (BitVec 64) :=
.seq globalBody653_328 globalBody653_329

def globalBody653_331 : Prog (BitVec 64) :=
.seq globalBody653_330 globalBody653_1

def globalBody653_332 : Prog (BitVec 64) :=
.seq globalBody653_331 globalBody653_3

def globalBody653_333 : Prog (BitVec 64) :=
.seq globalBody653_332 globalBody653_5

def globalBody653_334 : Prog (BitVec 64) :=
.seq globalBody653_333 globalBody653_7

def globalBody653_335 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "m7"
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.var Flapjack.VarKind.local "dg", Flapjack.Exp.const 3834012553#64],
      Flapjack.Exp.const 4294967295#64])

def globalBody653_336 : Prog (BitVec 64) :=
.seq globalBody653_334 globalBody653_335

def globalBody653_337 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m7", Flapjack.Exp.const 3632069959#64])

def globalBody653_338 : Prog (BitVec 64) :=
.seq globalBody653_336 globalBody653_337

def globalBody653_339 : Prog (BitVec 64) :=
.seq globalBody653_338 globalBody653_13

def globalBody653_340 : Prog (BitVec 64) :=
.seq globalBody653_339 globalBody653_15

def globalBody653_341 : Prog (BitVec 64) :=
.seq globalBody653_340 globalBody653_17

def globalBody653_342 : Prog (BitVec 64) :=
.seq globalBody653_341 globalBody653_19

def globalBody653_343 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b7"])

def globalBody653_344 : Prog (BitVec 64) :=
.seq globalBody653_342 globalBody653_343

def globalBody653_345 : Prog (BitVec 64) :=
.seq globalBody653_344 globalBody653_1

def globalBody653_346 : Prog (BitVec 64) :=
.seq globalBody653_345 globalBody653_3

def globalBody653_347 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "b6"])

def globalBody653_348 : Prog (BitVec 64) :=
.seq globalBody653_346 globalBody653_347

def globalBody653_349 : Prog (BitVec 64) :=
.seq globalBody653_348 globalBody653_1

def globalBody653_350 : Prog (BitVec 64) :=
.seq globalBody653_349 globalBody653_3

def globalBody653_351 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "b5"])

def globalBody653_352 : Prog (BitVec 64) :=
.seq globalBody653_350 globalBody653_351

def globalBody653_353 : Prog (BitVec 64) :=
.seq globalBody653_352 globalBody653_1

def globalBody653_354 : Prog (BitVec 64) :=
.seq globalBody653_353 globalBody653_3

def globalBody653_355 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "b4"])

def globalBody653_356 : Prog (BitVec 64) :=
.seq globalBody653_354 globalBody653_355

def globalBody653_357 : Prog (BitVec 64) :=
.seq globalBody653_356 globalBody653_1

def globalBody653_358 : Prog (BitVec 64) :=
.seq globalBody653_357 globalBody653_3

def globalBody653_359 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "b3"])

def globalBody653_360 : Prog (BitVec 64) :=
.seq globalBody653_358 globalBody653_359

def globalBody653_361 : Prog (BitVec 64) :=
.seq globalBody653_360 globalBody653_1

def globalBody653_362 : Prog (BitVec 64) :=
.seq globalBody653_361 globalBody653_3

def globalBody653_363 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "b2"])

def globalBody653_364 : Prog (BitVec 64) :=
.seq globalBody653_362 globalBody653_363

def globalBody653_365 : Prog (BitVec 64) :=
.seq globalBody653_364 globalBody653_1

def globalBody653_366 : Prog (BitVec 64) :=
.seq globalBody653_365 globalBody653_3

def globalBody653_367 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "b1"])

def globalBody653_368 : Prog (BitVec 64) :=
.seq globalBody653_366 globalBody653_367

def globalBody653_369 : Prog (BitVec 64) :=
.seq globalBody653_368 globalBody653_1

def globalBody653_370 : Prog (BitVec 64) :=
.seq globalBody653_369 globalBody653_3

def globalBody653_371 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m1", Flapjack.Exp.const 811880050#64])

def globalBody653_372 : Prog (BitVec 64) :=
.seq globalBody653_370 globalBody653_371

def globalBody653_373 : Prog (BitVec 64) :=
.seq globalBody653_372 globalBody653_1

def globalBody653_374 : Prog (BitVec 64) :=
.seq globalBody653_373 globalBody653_3

def globalBody653_375 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m2", Flapjack.Exp.const 3778125865#64])

def globalBody653_376 : Prog (BitVec 64) :=
.seq globalBody653_374 globalBody653_375

def globalBody653_377 : Prog (BitVec 64) :=
.seq globalBody653_376 globalBody653_1

def globalBody653_378 : Prog (BitVec 64) :=
.seq globalBody653_377 globalBody653_3

def globalBody653_379 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m3", Flapjack.Exp.const 3092268470#64])

def globalBody653_380 : Prog (BitVec 64) :=
.seq globalBody653_378 globalBody653_379

def globalBody653_381 : Prog (BitVec 64) :=
.seq globalBody653_380 globalBody653_1

def globalBody653_382 : Prog (BitVec 64) :=
.seq globalBody653_381 globalBody653_3

def globalBody653_383 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m4", Flapjack.Exp.const 2172737629#64])

def globalBody653_384 : Prog (BitVec 64) :=
.seq globalBody653_382 globalBody653_383

def globalBody653_385 : Prog (BitVec 64) :=
.seq globalBody653_384 globalBody653_1

def globalBody653_386 : Prog (BitVec 64) :=
.seq globalBody653_385 globalBody653_3

def globalBody653_387 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m5", Flapjack.Exp.const 2541841041#64])

def globalBody653_388 : Prog (BitVec 64) :=
.seq globalBody653_386 globalBody653_387

def globalBody653_389 : Prog (BitVec 64) :=
.seq globalBody653_388 globalBody653_1

def globalBody653_390 : Prog (BitVec 64) :=
.seq globalBody653_389 globalBody653_3

def globalBody653_391 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m6", Flapjack.Exp.const 1752287885#64])

def globalBody653_392 : Prog (BitVec 64) :=
.seq globalBody653_390 globalBody653_391

def globalBody653_393 : Prog (BitVec 64) :=
.seq globalBody653_392 globalBody653_1

def globalBody653_394 : Prog (BitVec 64) :=
.seq globalBody653_393 globalBody653_3

def globalBody653_395 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m7", Flapjack.Exp.const 1008765974#64])

def globalBody653_396 : Prog (BitVec 64) :=
.seq globalBody653_394 globalBody653_395

def globalBody653_397 : Prog (BitVec 64) :=
.seq globalBody653_396 globalBody653_1

def globalBody653_398 : Prog (BitVec 64) :=
.seq globalBody653_397 globalBody653_3

def globalBody653_399 : Prog (BitVec 64) :=
.seq globalBody653_398 globalBody653_5

def globalBody653_400 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "u0"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody653_401 : Prog (BitVec 64) :=
.seq globalBody653_399 globalBody653_400

def globalBody653_402 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "col") (Flapjack.Exp.const 32#64),
      Flapjack.Exp.var Flapjack.VarKind.local "H"])

def globalBody653_403 : Prog (BitVec 64) :=
.seq globalBody653_401 globalBody653_402

def globalBody653_404 : Prog (BitVec 64) :=
.seq globalBody653_403 globalBody653_17

def globalBody653_405 : Prog (BitVec 64) :=
.seq globalBody653_404 globalBody653_19

def globalBody653_406 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "b7"])

def globalBody653_407 : Prog (BitVec 64) :=
.seq globalBody653_405 globalBody653_406

def globalBody653_408 : Prog (BitVec 64) :=
.seq globalBody653_407 globalBody653_1

def globalBody653_409 : Prog (BitVec 64) :=
.seq globalBody653_408 globalBody653_3

def globalBody653_410 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "b6"])

def globalBody653_411 : Prog (BitVec 64) :=
.seq globalBody653_409 globalBody653_410

def globalBody653_412 : Prog (BitVec 64) :=
.seq globalBody653_411 globalBody653_1

def globalBody653_413 : Prog (BitVec 64) :=
.seq globalBody653_412 globalBody653_3

def globalBody653_414 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "b5"])

def globalBody653_415 : Prog (BitVec 64) :=
.seq globalBody653_413 globalBody653_414

def globalBody653_416 : Prog (BitVec 64) :=
.seq globalBody653_415 globalBody653_1

def globalBody653_417 : Prog (BitVec 64) :=
.seq globalBody653_416 globalBody653_3

def globalBody653_418 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "b4"])

def globalBody653_419 : Prog (BitVec 64) :=
.seq globalBody653_417 globalBody653_418

def globalBody653_420 : Prog (BitVec 64) :=
.seq globalBody653_419 globalBody653_1

def globalBody653_421 : Prog (BitVec 64) :=
.seq globalBody653_420 globalBody653_3

def globalBody653_422 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "b3"])

def globalBody653_423 : Prog (BitVec 64) :=
.seq globalBody653_421 globalBody653_422

def globalBody653_424 : Prog (BitVec 64) :=
.seq globalBody653_423 globalBody653_1

def globalBody653_425 : Prog (BitVec 64) :=
.seq globalBody653_424 globalBody653_3

def globalBody653_426 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "b2"])

def globalBody653_427 : Prog (BitVec 64) :=
.seq globalBody653_425 globalBody653_426

def globalBody653_428 : Prog (BitVec 64) :=
.seq globalBody653_427 globalBody653_1

def globalBody653_429 : Prog (BitVec 64) :=
.seq globalBody653_428 globalBody653_3

def globalBody653_430 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m2", Flapjack.Exp.const 811880050#64])

def globalBody653_431 : Prog (BitVec 64) :=
.seq globalBody653_429 globalBody653_430

def globalBody653_432 : Prog (BitVec 64) :=
.seq globalBody653_431 globalBody653_1

def globalBody653_433 : Prog (BitVec 64) :=
.seq globalBody653_432 globalBody653_3

def globalBody653_434 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m3", Flapjack.Exp.const 3778125865#64])

def globalBody653_435 : Prog (BitVec 64) :=
.seq globalBody653_433 globalBody653_434

def globalBody653_436 : Prog (BitVec 64) :=
.seq globalBody653_435 globalBody653_1

def globalBody653_437 : Prog (BitVec 64) :=
.seq globalBody653_436 globalBody653_3

def globalBody653_438 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m4", Flapjack.Exp.const 3092268470#64])

def globalBody653_439 : Prog (BitVec 64) :=
.seq globalBody653_437 globalBody653_438

def globalBody653_440 : Prog (BitVec 64) :=
.seq globalBody653_439 globalBody653_1

def globalBody653_441 : Prog (BitVec 64) :=
.seq globalBody653_440 globalBody653_3

def globalBody653_442 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m5", Flapjack.Exp.const 2172737629#64])

def globalBody653_443 : Prog (BitVec 64) :=
.seq globalBody653_441 globalBody653_442

def globalBody653_444 : Prog (BitVec 64) :=
.seq globalBody653_443 globalBody653_1

def globalBody653_445 : Prog (BitVec 64) :=
.seq globalBody653_444 globalBody653_3

def globalBody653_446 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m6", Flapjack.Exp.const 2541841041#64])

def globalBody653_447 : Prog (BitVec 64) :=
.seq globalBody653_445 globalBody653_446

def globalBody653_448 : Prog (BitVec 64) :=
.seq globalBody653_447 globalBody653_1

def globalBody653_449 : Prog (BitVec 64) :=
.seq globalBody653_448 globalBody653_3

def globalBody653_450 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m7", Flapjack.Exp.const 1752287885#64])

def globalBody653_451 : Prog (BitVec 64) :=
.seq globalBody653_449 globalBody653_450

def globalBody653_452 : Prog (BitVec 64) :=
.seq globalBody653_451 globalBody653_1

def globalBody653_453 : Prog (BitVec 64) :=
.seq globalBody653_452 globalBody653_3

def globalBody653_454 : Prog (BitVec 64) :=
.seq globalBody653_453 globalBody653_5

def globalBody653_455 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "u1"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody653_456 : Prog (BitVec 64) :=
.seq globalBody653_454 globalBody653_455

def globalBody653_457 : Prog (BitVec 64) :=
.seq globalBody653_456 globalBody653_402

def globalBody653_458 : Prog (BitVec 64) :=
.seq globalBody653_457 globalBody653_17

def globalBody653_459 : Prog (BitVec 64) :=
.seq globalBody653_458 globalBody653_19

def globalBody653_460 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "b7"])

def globalBody653_461 : Prog (BitVec 64) :=
.seq globalBody653_459 globalBody653_460

def globalBody653_462 : Prog (BitVec 64) :=
.seq globalBody653_461 globalBody653_1

def globalBody653_463 : Prog (BitVec 64) :=
.seq globalBody653_462 globalBody653_3

def globalBody653_464 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "b6"])

def globalBody653_465 : Prog (BitVec 64) :=
.seq globalBody653_463 globalBody653_464

def globalBody653_466 : Prog (BitVec 64) :=
.seq globalBody653_465 globalBody653_1

def globalBody653_467 : Prog (BitVec 64) :=
.seq globalBody653_466 globalBody653_3

def globalBody653_468 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "b5"])

def globalBody653_469 : Prog (BitVec 64) :=
.seq globalBody653_467 globalBody653_468

def globalBody653_470 : Prog (BitVec 64) :=
.seq globalBody653_469 globalBody653_1

def globalBody653_471 : Prog (BitVec 64) :=
.seq globalBody653_470 globalBody653_3

def globalBody653_472 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "b4"])

def globalBody653_473 : Prog (BitVec 64) :=
.seq globalBody653_471 globalBody653_472

def globalBody653_474 : Prog (BitVec 64) :=
.seq globalBody653_473 globalBody653_1

def globalBody653_475 : Prog (BitVec 64) :=
.seq globalBody653_474 globalBody653_3

def globalBody653_476 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "b3"])

def globalBody653_477 : Prog (BitVec 64) :=
.seq globalBody653_475 globalBody653_476

def globalBody653_478 : Prog (BitVec 64) :=
.seq globalBody653_477 globalBody653_1

def globalBody653_479 : Prog (BitVec 64) :=
.seq globalBody653_478 globalBody653_3

def globalBody653_480 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m3", Flapjack.Exp.const 811880050#64])

def globalBody653_481 : Prog (BitVec 64) :=
.seq globalBody653_479 globalBody653_480

def globalBody653_482 : Prog (BitVec 64) :=
.seq globalBody653_481 globalBody653_1

def globalBody653_483 : Prog (BitVec 64) :=
.seq globalBody653_482 globalBody653_3

def globalBody653_484 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m4", Flapjack.Exp.const 3778125865#64])

def globalBody653_485 : Prog (BitVec 64) :=
.seq globalBody653_483 globalBody653_484

def globalBody653_486 : Prog (BitVec 64) :=
.seq globalBody653_485 globalBody653_1

def globalBody653_487 : Prog (BitVec 64) :=
.seq globalBody653_486 globalBody653_3

def globalBody653_488 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m5", Flapjack.Exp.const 3092268470#64])

def globalBody653_489 : Prog (BitVec 64) :=
.seq globalBody653_487 globalBody653_488

def globalBody653_490 : Prog (BitVec 64) :=
.seq globalBody653_489 globalBody653_1

def globalBody653_491 : Prog (BitVec 64) :=
.seq globalBody653_490 globalBody653_3

def globalBody653_492 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m6", Flapjack.Exp.const 2172737629#64])

def globalBody653_493 : Prog (BitVec 64) :=
.seq globalBody653_491 globalBody653_492

def globalBody653_494 : Prog (BitVec 64) :=
.seq globalBody653_493 globalBody653_1

def globalBody653_495 : Prog (BitVec 64) :=
.seq globalBody653_494 globalBody653_3

def globalBody653_496 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m7", Flapjack.Exp.const 2541841041#64])

def globalBody653_497 : Prog (BitVec 64) :=
.seq globalBody653_495 globalBody653_496

def globalBody653_498 : Prog (BitVec 64) :=
.seq globalBody653_497 globalBody653_1

def globalBody653_499 : Prog (BitVec 64) :=
.seq globalBody653_498 globalBody653_3

def globalBody653_500 : Prog (BitVec 64) :=
.seq globalBody653_499 globalBody653_5

def globalBody653_501 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "u2"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody653_502 : Prog (BitVec 64) :=
.seq globalBody653_500 globalBody653_501

def globalBody653_503 : Prog (BitVec 64) :=
.seq globalBody653_502 globalBody653_402

def globalBody653_504 : Prog (BitVec 64) :=
.seq globalBody653_503 globalBody653_17

def globalBody653_505 : Prog (BitVec 64) :=
.seq globalBody653_504 globalBody653_19

def globalBody653_506 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "b7"])

def globalBody653_507 : Prog (BitVec 64) :=
.seq globalBody653_505 globalBody653_506

def globalBody653_508 : Prog (BitVec 64) :=
.seq globalBody653_507 globalBody653_1

def globalBody653_509 : Prog (BitVec 64) :=
.seq globalBody653_508 globalBody653_3

def globalBody653_510 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "b6"])

def globalBody653_511 : Prog (BitVec 64) :=
.seq globalBody653_509 globalBody653_510

def globalBody653_512 : Prog (BitVec 64) :=
.seq globalBody653_511 globalBody653_1

def globalBody653_513 : Prog (BitVec 64) :=
.seq globalBody653_512 globalBody653_3

def globalBody653_514 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "b5"])

def globalBody653_515 : Prog (BitVec 64) :=
.seq globalBody653_513 globalBody653_514

def globalBody653_516 : Prog (BitVec 64) :=
.seq globalBody653_515 globalBody653_1

def globalBody653_517 : Prog (BitVec 64) :=
.seq globalBody653_516 globalBody653_3

def globalBody653_518 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "b4"])

def globalBody653_519 : Prog (BitVec 64) :=
.seq globalBody653_517 globalBody653_518

def globalBody653_520 : Prog (BitVec 64) :=
.seq globalBody653_519 globalBody653_1

def globalBody653_521 : Prog (BitVec 64) :=
.seq globalBody653_520 globalBody653_3

def globalBody653_522 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m4", Flapjack.Exp.const 811880050#64])

def globalBody653_523 : Prog (BitVec 64) :=
.seq globalBody653_521 globalBody653_522

def globalBody653_524 : Prog (BitVec 64) :=
.seq globalBody653_523 globalBody653_1

def globalBody653_525 : Prog (BitVec 64) :=
.seq globalBody653_524 globalBody653_3

def globalBody653_526 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m5", Flapjack.Exp.const 3778125865#64])

def globalBody653_527 : Prog (BitVec 64) :=
.seq globalBody653_525 globalBody653_526

def globalBody653_528 : Prog (BitVec 64) :=
.seq globalBody653_527 globalBody653_1

def globalBody653_529 : Prog (BitVec 64) :=
.seq globalBody653_528 globalBody653_3

def globalBody653_530 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m6", Flapjack.Exp.const 3092268470#64])

def globalBody653_531 : Prog (BitVec 64) :=
.seq globalBody653_529 globalBody653_530

def globalBody653_532 : Prog (BitVec 64) :=
.seq globalBody653_531 globalBody653_1

def globalBody653_533 : Prog (BitVec 64) :=
.seq globalBody653_532 globalBody653_3

def globalBody653_534 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m7", Flapjack.Exp.const 2172737629#64])

def globalBody653_535 : Prog (BitVec 64) :=
.seq globalBody653_533 globalBody653_534

def globalBody653_536 : Prog (BitVec 64) :=
.seq globalBody653_535 globalBody653_1

def globalBody653_537 : Prog (BitVec 64) :=
.seq globalBody653_536 globalBody653_3

def globalBody653_538 : Prog (BitVec 64) :=
.seq globalBody653_537 globalBody653_5

def globalBody653_539 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "u3"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody653_540 : Prog (BitVec 64) :=
.seq globalBody653_538 globalBody653_539

def globalBody653_541 : Prog (BitVec 64) :=
.seq globalBody653_540 globalBody653_402

def globalBody653_542 : Prog (BitVec 64) :=
.seq globalBody653_541 globalBody653_17

def globalBody653_543 : Prog (BitVec 64) :=
.seq globalBody653_542 globalBody653_19

def globalBody653_544 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "b7"])

def globalBody653_545 : Prog (BitVec 64) :=
.seq globalBody653_543 globalBody653_544

def globalBody653_546 : Prog (BitVec 64) :=
.seq globalBody653_545 globalBody653_1

def globalBody653_547 : Prog (BitVec 64) :=
.seq globalBody653_546 globalBody653_3

def globalBody653_548 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "b6"])

def globalBody653_549 : Prog (BitVec 64) :=
.seq globalBody653_547 globalBody653_548

def globalBody653_550 : Prog (BitVec 64) :=
.seq globalBody653_549 globalBody653_1

def globalBody653_551 : Prog (BitVec 64) :=
.seq globalBody653_550 globalBody653_3

def globalBody653_552 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "b5"])

def globalBody653_553 : Prog (BitVec 64) :=
.seq globalBody653_551 globalBody653_552

def globalBody653_554 : Prog (BitVec 64) :=
.seq globalBody653_553 globalBody653_1

def globalBody653_555 : Prog (BitVec 64) :=
.seq globalBody653_554 globalBody653_3

def globalBody653_556 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m5", Flapjack.Exp.const 811880050#64])

def globalBody653_557 : Prog (BitVec 64) :=
.seq globalBody653_555 globalBody653_556

def globalBody653_558 : Prog (BitVec 64) :=
.seq globalBody653_557 globalBody653_1

def globalBody653_559 : Prog (BitVec 64) :=
.seq globalBody653_558 globalBody653_3

def globalBody653_560 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m6", Flapjack.Exp.const 3778125865#64])

def globalBody653_561 : Prog (BitVec 64) :=
.seq globalBody653_559 globalBody653_560

def globalBody653_562 : Prog (BitVec 64) :=
.seq globalBody653_561 globalBody653_1

def globalBody653_563 : Prog (BitVec 64) :=
.seq globalBody653_562 globalBody653_3

def globalBody653_564 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m7", Flapjack.Exp.const 3092268470#64])

def globalBody653_565 : Prog (BitVec 64) :=
.seq globalBody653_563 globalBody653_564

def globalBody653_566 : Prog (BitVec 64) :=
.seq globalBody653_565 globalBody653_1

def globalBody653_567 : Prog (BitVec 64) :=
.seq globalBody653_566 globalBody653_3

def globalBody653_568 : Prog (BitVec 64) :=
.seq globalBody653_567 globalBody653_5

def globalBody653_569 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "u4"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody653_570 : Prog (BitVec 64) :=
.seq globalBody653_568 globalBody653_569

def globalBody653_571 : Prog (BitVec 64) :=
.seq globalBody653_570 globalBody653_402

def globalBody653_572 : Prog (BitVec 64) :=
.seq globalBody653_571 globalBody653_17

def globalBody653_573 : Prog (BitVec 64) :=
.seq globalBody653_572 globalBody653_19

def globalBody653_574 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "b7"])

def globalBody653_575 : Prog (BitVec 64) :=
.seq globalBody653_573 globalBody653_574

def globalBody653_576 : Prog (BitVec 64) :=
.seq globalBody653_575 globalBody653_1

def globalBody653_577 : Prog (BitVec 64) :=
.seq globalBody653_576 globalBody653_3

def globalBody653_578 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "b6"])

def globalBody653_579 : Prog (BitVec 64) :=
.seq globalBody653_577 globalBody653_578

def globalBody653_580 : Prog (BitVec 64) :=
.seq globalBody653_579 globalBody653_1

def globalBody653_581 : Prog (BitVec 64) :=
.seq globalBody653_580 globalBody653_3

def globalBody653_582 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m6", Flapjack.Exp.const 811880050#64])

def globalBody653_583 : Prog (BitVec 64) :=
.seq globalBody653_581 globalBody653_582

def globalBody653_584 : Prog (BitVec 64) :=
.seq globalBody653_583 globalBody653_1

def globalBody653_585 : Prog (BitVec 64) :=
.seq globalBody653_584 globalBody653_3

def globalBody653_586 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m7", Flapjack.Exp.const 3778125865#64])

def globalBody653_587 : Prog (BitVec 64) :=
.seq globalBody653_585 globalBody653_586

def globalBody653_588 : Prog (BitVec 64) :=
.seq globalBody653_587 globalBody653_1

def globalBody653_589 : Prog (BitVec 64) :=
.seq globalBody653_588 globalBody653_3

def globalBody653_590 : Prog (BitVec 64) :=
.seq globalBody653_589 globalBody653_5

def globalBody653_591 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "u5"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody653_592 : Prog (BitVec 64) :=
.seq globalBody653_590 globalBody653_591

def globalBody653_593 : Prog (BitVec 64) :=
.seq globalBody653_592 globalBody653_402

def globalBody653_594 : Prog (BitVec 64) :=
.seq globalBody653_593 globalBody653_17

def globalBody653_595 : Prog (BitVec 64) :=
.seq globalBody653_594 globalBody653_19

def globalBody653_596 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "b7"])

def globalBody653_597 : Prog (BitVec 64) :=
.seq globalBody653_595 globalBody653_596

def globalBody653_598 : Prog (BitVec 64) :=
.seq globalBody653_597 globalBody653_1

def globalBody653_599 : Prog (BitVec 64) :=
.seq globalBody653_598 globalBody653_3

def globalBody653_600 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "pr"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "m7", Flapjack.Exp.const 811880050#64])

def globalBody653_601 : Prog (BitVec 64) :=
.seq globalBody653_599 globalBody653_600

def globalBody653_602 : Prog (BitVec 64) :=
.seq globalBody653_601 globalBody653_1

def globalBody653_603 : Prog (BitVec 64) :=
.seq globalBody653_602 globalBody653_3

def globalBody653_604 : Prog (BitVec 64) :=
.seq globalBody653_603 globalBody653_5

def globalBody653_605 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "u6"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody653_606 : Prog (BitVec 64) :=
.seq globalBody653_604 globalBody653_605

def globalBody653_607 : Prog (BitVec 64) :=
.seq globalBody653_606 globalBody653_402

def globalBody653_608 : Prog (BitVec 64) :=
.seq globalBody653_607 globalBody653_17

def globalBody653_609 : Prog (BitVec 64) :=
.seq globalBody653_608 globalBody653_19

def globalBody653_610 : Prog (BitVec 64) :=
Flapjack.Prog.call none "u256_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "r",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 4332616871279656263#64, Flapjack.Exp.const 10917124144477883021#64,
        Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]

def globalBody653_611 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody653_612 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "lt") (Flapjack.Exp.const 0#64)) globalBody653_610 globalBody653_611

def globalBody653_613 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "r")

def globalBody653_614 : Prog (BitVec 64) :=
.seq globalBody653_612 globalBody653_613

def globalBody653_615 : Prog (BitVec 64) :=
.decCall ("lt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "r",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 4332616871279656263#64, Flapjack.Exp.const 10917124144477883021#64,
      Flapjack.Exp.const 13281191951274694749#64, Flapjack.Exp.const 3486998266802970665#64]]) globalBody653_614

def globalBody653_616 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.op Flapjack.BinOp.or
      [Flapjack.Exp.var Flapjack.VarKind.local "u0",
        Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "u1")
          (Flapjack.Exp.const 32#64)],
    Flapjack.Exp.op Flapjack.BinOp.or
      [Flapjack.Exp.var Flapjack.VarKind.local "u2",
        Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "u3")
          (Flapjack.Exp.const 32#64)],
    Flapjack.Exp.op Flapjack.BinOp.or
      [Flapjack.Exp.var Flapjack.VarKind.local "u4",
        Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "u5")
          (Flapjack.Exp.const 32#64)],
    Flapjack.Exp.op Flapjack.BinOp.or
      [Flapjack.Exp.var Flapjack.VarKind.local "u6",
        Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "c") (Flapjack.Exp.const 32#64)]]) globalBody653_615

def globalBody653_617 : Prog (BitVec 64) :=
.seq globalBody653_609 globalBody653_616

def globalBody653_618 : Prog (BitVec 64) :=
.dec ("u6") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody653_617

def globalBody653_619 : Prog (BitVec 64) :=
.dec ("u5") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody653_618

def globalBody653_620 : Prog (BitVec 64) :=
.dec ("u4") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody653_619

def globalBody653_621 : Prog (BitVec 64) :=
.dec ("u3") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody653_620

def globalBody653_622 : Prog (BitVec 64) :=
.dec ("u2") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody653_621

def globalBody653_623 : Prog (BitVec 64) :=
.dec ("u1") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody653_622

def globalBody653_624 : Prog (BitVec 64) :=
.dec ("u0") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody653_623

def globalBody653_625 : Prog (BitVec 64) :=
.dec ("m7") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody653_624

def globalBody653_626 : Prog (BitVec 64) :=
.dec ("m6") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody653_625

def globalBody653_627 : Prog (BitVec 64) :=
.dec ("m5") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody653_626

def globalBody653_628 : Prog (BitVec 64) :=
.dec ("m4") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody653_627

def globalBody653_629 : Prog (BitVec 64) :=
.dec ("m3") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody653_628

def globalBody653_630 : Prog (BitVec 64) :=
.dec ("m2") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody653_629

def globalBody653_631 : Prog (BitVec 64) :=
.dec ("m1") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody653_630

def globalBody653_632 : Prog (BitVec 64) :=
.dec ("m0") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody653_631

def globalBody653_633 : Prog (BitVec 64) :=
.dec ("dg") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody653_632

def globalBody653_634 : Prog (BitVec 64) :=
.dec ("col2") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody653_633

def globalBody653_635 : Prog (BitVec 64) :=
.dec ("col") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody653_634

def globalBody653_636 : Prog (BitVec 64) :=
.dec ("c") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody653_635

def globalBody653_637 : Prog (BitVec 64) :=
.dec ("H") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody653_636

def globalBody653_638 : Prog (BitVec 64) :=
.dec ("L") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody653_637

def globalBody653_639 : Prog (BitVec 64) :=
.dec ("pr") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody653_638

def globalBody653_640 : Prog (BitVec 64) :=
.dec ("b7") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b"))
  (Flapjack.Exp.const 32#64)) globalBody653_639

def globalBody653_641 : Prog (BitVec 64) :=
.dec ("b6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b"), Flapjack.Exp.const 4294967295#64]) globalBody653_640

def globalBody653_642 : Prog (BitVec 64) :=
.dec ("b5") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"))
  (Flapjack.Exp.const 32#64)) globalBody653_641

def globalBody653_643 : Prog (BitVec 64) :=
.dec ("b4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"), Flapjack.Exp.const 4294967295#64]) globalBody653_642

def globalBody653_644 : Prog (BitVec 64) :=
.dec ("b3") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"))
  (Flapjack.Exp.const 32#64)) globalBody653_643

def globalBody653_645 : Prog (BitVec 64) :=
.dec ("b2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"), Flapjack.Exp.const 4294967295#64]) globalBody653_644

def globalBody653_646 : Prog (BitVec 64) :=
.dec ("b1") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b"))
  (Flapjack.Exp.const 32#64)) globalBody653_645

def globalBody653_647 : Prog (BitVec 64) :=
.dec ("b0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b"), Flapjack.Exp.const 4294967295#64]) globalBody653_646

def globalBody653_648 : Prog (BitVec 64) :=
.dec ("a7") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) globalBody653_647

def globalBody653_649 : Prog (BitVec 64) :=
.dec ("a6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) globalBody653_648

def globalBody653_650 : Prog (BitVec 64) :=
.dec ("a5") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) globalBody653_649

def globalBody653_651 : Prog (BitVec 64) :=
.dec ("a4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) globalBody653_650

def globalBody653_652 : Prog (BitVec 64) :=
.dec ("a3") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) globalBody653_651

def globalBody653_653 : Prog (BitVec 64) :=
.dec ("a2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) globalBody653_652

def globalBody653_654 : Prog (BitVec 64) :=
.dec ("a1") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) globalBody653_653

def globalBody653_655 : Prog (BitVec 64) :=
.dec ("a0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) globalBody653_654

def globalData653 : Decl (BitVec 64) :=
.function { name := "fq_mul", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody653_655, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput653 := Pancake.PanLang.declToHOL globalData653
end InitECandidate.Proofs.FrontendStages.Declarations
