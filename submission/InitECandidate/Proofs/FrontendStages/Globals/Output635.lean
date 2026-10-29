import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data635
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate616
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody635_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b0"])

def globalBody635_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "L"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "L",
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 4294967295#64]])

def globalBody635_2 : Prog (BitVec 64) :=
.seq globalBody635_0 globalBody635_1

def globalBody635_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "H"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "H",
      Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "p") (Flapjack.Exp.const 32#64)])

def globalBody635_4 : Prog (BitVec 64) :=
.seq globalBody635_2 globalBody635_3

def globalBody635_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "L", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody635_6 : Prog (BitVec 64) :=
.seq globalBody635_4 globalBody635_5

def globalBody635_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d0"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody635_8 : Prog (BitVec 64) :=
.seq globalBody635_6 globalBody635_7

def globalBody635_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "col") (Flapjack.Exp.const 32#64),
      Flapjack.Exp.var Flapjack.VarKind.local "H"])

def globalBody635_10 : Prog (BitVec 64) :=
.seq globalBody635_8 globalBody635_9

def globalBody635_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "L" (Flapjack.Exp.const 0#64)

def globalBody635_12 : Prog (BitVec 64) :=
.seq globalBody635_10 globalBody635_11

def globalBody635_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "H" (Flapjack.Exp.const 0#64)

def globalBody635_14 : Prog (BitVec 64) :=
.seq globalBody635_12 globalBody635_13

def globalBody635_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b1"])

def globalBody635_16 : Prog (BitVec 64) :=
.seq globalBody635_14 globalBody635_15

def globalBody635_17 : Prog (BitVec 64) :=
.seq globalBody635_16 globalBody635_1

def globalBody635_18 : Prog (BitVec 64) :=
.seq globalBody635_17 globalBody635_3

def globalBody635_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b0"])

def globalBody635_20 : Prog (BitVec 64) :=
.seq globalBody635_18 globalBody635_19

def globalBody635_21 : Prog (BitVec 64) :=
.seq globalBody635_20 globalBody635_1

def globalBody635_22 : Prog (BitVec 64) :=
.seq globalBody635_21 globalBody635_3

def globalBody635_23 : Prog (BitVec 64) :=
.seq globalBody635_22 globalBody635_5

def globalBody635_24 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d1"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody635_25 : Prog (BitVec 64) :=
.seq globalBody635_23 globalBody635_24

def globalBody635_26 : Prog (BitVec 64) :=
.seq globalBody635_25 globalBody635_9

def globalBody635_27 : Prog (BitVec 64) :=
.seq globalBody635_26 globalBody635_11

def globalBody635_28 : Prog (BitVec 64) :=
.seq globalBody635_27 globalBody635_13

def globalBody635_29 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b2"])

def globalBody635_30 : Prog (BitVec 64) :=
.seq globalBody635_28 globalBody635_29

def globalBody635_31 : Prog (BitVec 64) :=
.seq globalBody635_30 globalBody635_1

def globalBody635_32 : Prog (BitVec 64) :=
.seq globalBody635_31 globalBody635_3

def globalBody635_33 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b1"])

def globalBody635_34 : Prog (BitVec 64) :=
.seq globalBody635_32 globalBody635_33

def globalBody635_35 : Prog (BitVec 64) :=
.seq globalBody635_34 globalBody635_1

def globalBody635_36 : Prog (BitVec 64) :=
.seq globalBody635_35 globalBody635_3

def globalBody635_37 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "b0"])

def globalBody635_38 : Prog (BitVec 64) :=
.seq globalBody635_36 globalBody635_37

def globalBody635_39 : Prog (BitVec 64) :=
.seq globalBody635_38 globalBody635_1

def globalBody635_40 : Prog (BitVec 64) :=
.seq globalBody635_39 globalBody635_3

def globalBody635_41 : Prog (BitVec 64) :=
.seq globalBody635_40 globalBody635_5

def globalBody635_42 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d2"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody635_43 : Prog (BitVec 64) :=
.seq globalBody635_41 globalBody635_42

def globalBody635_44 : Prog (BitVec 64) :=
.seq globalBody635_43 globalBody635_9

def globalBody635_45 : Prog (BitVec 64) :=
.seq globalBody635_44 globalBody635_11

def globalBody635_46 : Prog (BitVec 64) :=
.seq globalBody635_45 globalBody635_13

def globalBody635_47 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b3"])

def globalBody635_48 : Prog (BitVec 64) :=
.seq globalBody635_46 globalBody635_47

def globalBody635_49 : Prog (BitVec 64) :=
.seq globalBody635_48 globalBody635_1

def globalBody635_50 : Prog (BitVec 64) :=
.seq globalBody635_49 globalBody635_3

def globalBody635_51 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b2"])

def globalBody635_52 : Prog (BitVec 64) :=
.seq globalBody635_50 globalBody635_51

def globalBody635_53 : Prog (BitVec 64) :=
.seq globalBody635_52 globalBody635_1

def globalBody635_54 : Prog (BitVec 64) :=
.seq globalBody635_53 globalBody635_3

def globalBody635_55 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "b1"])

def globalBody635_56 : Prog (BitVec 64) :=
.seq globalBody635_54 globalBody635_55

def globalBody635_57 : Prog (BitVec 64) :=
.seq globalBody635_56 globalBody635_1

def globalBody635_58 : Prog (BitVec 64) :=
.seq globalBody635_57 globalBody635_3

def globalBody635_59 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "b0"])

def globalBody635_60 : Prog (BitVec 64) :=
.seq globalBody635_58 globalBody635_59

def globalBody635_61 : Prog (BitVec 64) :=
.seq globalBody635_60 globalBody635_1

def globalBody635_62 : Prog (BitVec 64) :=
.seq globalBody635_61 globalBody635_3

def globalBody635_63 : Prog (BitVec 64) :=
.seq globalBody635_62 globalBody635_5

def globalBody635_64 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d3"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody635_65 : Prog (BitVec 64) :=
.seq globalBody635_63 globalBody635_64

def globalBody635_66 : Prog (BitVec 64) :=
.seq globalBody635_65 globalBody635_9

def globalBody635_67 : Prog (BitVec 64) :=
.seq globalBody635_66 globalBody635_11

def globalBody635_68 : Prog (BitVec 64) :=
.seq globalBody635_67 globalBody635_13

def globalBody635_69 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b4"])

def globalBody635_70 : Prog (BitVec 64) :=
.seq globalBody635_68 globalBody635_69

def globalBody635_71 : Prog (BitVec 64) :=
.seq globalBody635_70 globalBody635_1

def globalBody635_72 : Prog (BitVec 64) :=
.seq globalBody635_71 globalBody635_3

def globalBody635_73 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b3"])

def globalBody635_74 : Prog (BitVec 64) :=
.seq globalBody635_72 globalBody635_73

def globalBody635_75 : Prog (BitVec 64) :=
.seq globalBody635_74 globalBody635_1

def globalBody635_76 : Prog (BitVec 64) :=
.seq globalBody635_75 globalBody635_3

def globalBody635_77 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "b2"])

def globalBody635_78 : Prog (BitVec 64) :=
.seq globalBody635_76 globalBody635_77

def globalBody635_79 : Prog (BitVec 64) :=
.seq globalBody635_78 globalBody635_1

def globalBody635_80 : Prog (BitVec 64) :=
.seq globalBody635_79 globalBody635_3

def globalBody635_81 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "b1"])

def globalBody635_82 : Prog (BitVec 64) :=
.seq globalBody635_80 globalBody635_81

def globalBody635_83 : Prog (BitVec 64) :=
.seq globalBody635_82 globalBody635_1

def globalBody635_84 : Prog (BitVec 64) :=
.seq globalBody635_83 globalBody635_3

def globalBody635_85 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "b0"])

def globalBody635_86 : Prog (BitVec 64) :=
.seq globalBody635_84 globalBody635_85

def globalBody635_87 : Prog (BitVec 64) :=
.seq globalBody635_86 globalBody635_1

def globalBody635_88 : Prog (BitVec 64) :=
.seq globalBody635_87 globalBody635_3

def globalBody635_89 : Prog (BitVec 64) :=
.seq globalBody635_88 globalBody635_5

def globalBody635_90 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d4"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody635_91 : Prog (BitVec 64) :=
.seq globalBody635_89 globalBody635_90

def globalBody635_92 : Prog (BitVec 64) :=
.seq globalBody635_91 globalBody635_9

def globalBody635_93 : Prog (BitVec 64) :=
.seq globalBody635_92 globalBody635_11

def globalBody635_94 : Prog (BitVec 64) :=
.seq globalBody635_93 globalBody635_13

def globalBody635_95 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b5"])

def globalBody635_96 : Prog (BitVec 64) :=
.seq globalBody635_94 globalBody635_95

def globalBody635_97 : Prog (BitVec 64) :=
.seq globalBody635_96 globalBody635_1

def globalBody635_98 : Prog (BitVec 64) :=
.seq globalBody635_97 globalBody635_3

def globalBody635_99 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b4"])

def globalBody635_100 : Prog (BitVec 64) :=
.seq globalBody635_98 globalBody635_99

def globalBody635_101 : Prog (BitVec 64) :=
.seq globalBody635_100 globalBody635_1

def globalBody635_102 : Prog (BitVec 64) :=
.seq globalBody635_101 globalBody635_3

def globalBody635_103 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "b3"])

def globalBody635_104 : Prog (BitVec 64) :=
.seq globalBody635_102 globalBody635_103

def globalBody635_105 : Prog (BitVec 64) :=
.seq globalBody635_104 globalBody635_1

def globalBody635_106 : Prog (BitVec 64) :=
.seq globalBody635_105 globalBody635_3

def globalBody635_107 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "b2"])

def globalBody635_108 : Prog (BitVec 64) :=
.seq globalBody635_106 globalBody635_107

def globalBody635_109 : Prog (BitVec 64) :=
.seq globalBody635_108 globalBody635_1

def globalBody635_110 : Prog (BitVec 64) :=
.seq globalBody635_109 globalBody635_3

def globalBody635_111 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "b1"])

def globalBody635_112 : Prog (BitVec 64) :=
.seq globalBody635_110 globalBody635_111

def globalBody635_113 : Prog (BitVec 64) :=
.seq globalBody635_112 globalBody635_1

def globalBody635_114 : Prog (BitVec 64) :=
.seq globalBody635_113 globalBody635_3

def globalBody635_115 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "b0"])

def globalBody635_116 : Prog (BitVec 64) :=
.seq globalBody635_114 globalBody635_115

def globalBody635_117 : Prog (BitVec 64) :=
.seq globalBody635_116 globalBody635_1

def globalBody635_118 : Prog (BitVec 64) :=
.seq globalBody635_117 globalBody635_3

def globalBody635_119 : Prog (BitVec 64) :=
.seq globalBody635_118 globalBody635_5

def globalBody635_120 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d5"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody635_121 : Prog (BitVec 64) :=
.seq globalBody635_119 globalBody635_120

def globalBody635_122 : Prog (BitVec 64) :=
.seq globalBody635_121 globalBody635_9

def globalBody635_123 : Prog (BitVec 64) :=
.seq globalBody635_122 globalBody635_11

def globalBody635_124 : Prog (BitVec 64) :=
.seq globalBody635_123 globalBody635_13

def globalBody635_125 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b6"])

def globalBody635_126 : Prog (BitVec 64) :=
.seq globalBody635_124 globalBody635_125

def globalBody635_127 : Prog (BitVec 64) :=
.seq globalBody635_126 globalBody635_1

def globalBody635_128 : Prog (BitVec 64) :=
.seq globalBody635_127 globalBody635_3

def globalBody635_129 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b5"])

def globalBody635_130 : Prog (BitVec 64) :=
.seq globalBody635_128 globalBody635_129

def globalBody635_131 : Prog (BitVec 64) :=
.seq globalBody635_130 globalBody635_1

def globalBody635_132 : Prog (BitVec 64) :=
.seq globalBody635_131 globalBody635_3

def globalBody635_133 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "b4"])

def globalBody635_134 : Prog (BitVec 64) :=
.seq globalBody635_132 globalBody635_133

def globalBody635_135 : Prog (BitVec 64) :=
.seq globalBody635_134 globalBody635_1

def globalBody635_136 : Prog (BitVec 64) :=
.seq globalBody635_135 globalBody635_3

def globalBody635_137 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "b3"])

def globalBody635_138 : Prog (BitVec 64) :=
.seq globalBody635_136 globalBody635_137

def globalBody635_139 : Prog (BitVec 64) :=
.seq globalBody635_138 globalBody635_1

def globalBody635_140 : Prog (BitVec 64) :=
.seq globalBody635_139 globalBody635_3

def globalBody635_141 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "b2"])

def globalBody635_142 : Prog (BitVec 64) :=
.seq globalBody635_140 globalBody635_141

def globalBody635_143 : Prog (BitVec 64) :=
.seq globalBody635_142 globalBody635_1

def globalBody635_144 : Prog (BitVec 64) :=
.seq globalBody635_143 globalBody635_3

def globalBody635_145 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "b1"])

def globalBody635_146 : Prog (BitVec 64) :=
.seq globalBody635_144 globalBody635_145

def globalBody635_147 : Prog (BitVec 64) :=
.seq globalBody635_146 globalBody635_1

def globalBody635_148 : Prog (BitVec 64) :=
.seq globalBody635_147 globalBody635_3

def globalBody635_149 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "b0"])

def globalBody635_150 : Prog (BitVec 64) :=
.seq globalBody635_148 globalBody635_149

def globalBody635_151 : Prog (BitVec 64) :=
.seq globalBody635_150 globalBody635_1

def globalBody635_152 : Prog (BitVec 64) :=
.seq globalBody635_151 globalBody635_3

def globalBody635_153 : Prog (BitVec 64) :=
.seq globalBody635_152 globalBody635_5

def globalBody635_154 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d6"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody635_155 : Prog (BitVec 64) :=
.seq globalBody635_153 globalBody635_154

def globalBody635_156 : Prog (BitVec 64) :=
.seq globalBody635_155 globalBody635_9

def globalBody635_157 : Prog (BitVec 64) :=
.seq globalBody635_156 globalBody635_11

def globalBody635_158 : Prog (BitVec 64) :=
.seq globalBody635_157 globalBody635_13

def globalBody635_159 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b7"])

def globalBody635_160 : Prog (BitVec 64) :=
.seq globalBody635_158 globalBody635_159

def globalBody635_161 : Prog (BitVec 64) :=
.seq globalBody635_160 globalBody635_1

def globalBody635_162 : Prog (BitVec 64) :=
.seq globalBody635_161 globalBody635_3

def globalBody635_163 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b6"])

def globalBody635_164 : Prog (BitVec 64) :=
.seq globalBody635_162 globalBody635_163

def globalBody635_165 : Prog (BitVec 64) :=
.seq globalBody635_164 globalBody635_1

def globalBody635_166 : Prog (BitVec 64) :=
.seq globalBody635_165 globalBody635_3

def globalBody635_167 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "b5"])

def globalBody635_168 : Prog (BitVec 64) :=
.seq globalBody635_166 globalBody635_167

def globalBody635_169 : Prog (BitVec 64) :=
.seq globalBody635_168 globalBody635_1

def globalBody635_170 : Prog (BitVec 64) :=
.seq globalBody635_169 globalBody635_3

def globalBody635_171 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "b4"])

def globalBody635_172 : Prog (BitVec 64) :=
.seq globalBody635_170 globalBody635_171

def globalBody635_173 : Prog (BitVec 64) :=
.seq globalBody635_172 globalBody635_1

def globalBody635_174 : Prog (BitVec 64) :=
.seq globalBody635_173 globalBody635_3

def globalBody635_175 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "b3"])

def globalBody635_176 : Prog (BitVec 64) :=
.seq globalBody635_174 globalBody635_175

def globalBody635_177 : Prog (BitVec 64) :=
.seq globalBody635_176 globalBody635_1

def globalBody635_178 : Prog (BitVec 64) :=
.seq globalBody635_177 globalBody635_3

def globalBody635_179 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "b2"])

def globalBody635_180 : Prog (BitVec 64) :=
.seq globalBody635_178 globalBody635_179

def globalBody635_181 : Prog (BitVec 64) :=
.seq globalBody635_180 globalBody635_1

def globalBody635_182 : Prog (BitVec 64) :=
.seq globalBody635_181 globalBody635_3

def globalBody635_183 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "b1"])

def globalBody635_184 : Prog (BitVec 64) :=
.seq globalBody635_182 globalBody635_183

def globalBody635_185 : Prog (BitVec 64) :=
.seq globalBody635_184 globalBody635_1

def globalBody635_186 : Prog (BitVec 64) :=
.seq globalBody635_185 globalBody635_3

def globalBody635_187 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "b0"])

def globalBody635_188 : Prog (BitVec 64) :=
.seq globalBody635_186 globalBody635_187

def globalBody635_189 : Prog (BitVec 64) :=
.seq globalBody635_188 globalBody635_1

def globalBody635_190 : Prog (BitVec 64) :=
.seq globalBody635_189 globalBody635_3

def globalBody635_191 : Prog (BitVec 64) :=
.seq globalBody635_190 globalBody635_5

def globalBody635_192 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d7"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody635_193 : Prog (BitVec 64) :=
.seq globalBody635_191 globalBody635_192

def globalBody635_194 : Prog (BitVec 64) :=
.seq globalBody635_193 globalBody635_9

def globalBody635_195 : Prog (BitVec 64) :=
.seq globalBody635_194 globalBody635_11

def globalBody635_196 : Prog (BitVec 64) :=
.seq globalBody635_195 globalBody635_13

def globalBody635_197 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b7"])

def globalBody635_198 : Prog (BitVec 64) :=
.seq globalBody635_196 globalBody635_197

def globalBody635_199 : Prog (BitVec 64) :=
.seq globalBody635_198 globalBody635_1

def globalBody635_200 : Prog (BitVec 64) :=
.seq globalBody635_199 globalBody635_3

def globalBody635_201 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "b6"])

def globalBody635_202 : Prog (BitVec 64) :=
.seq globalBody635_200 globalBody635_201

def globalBody635_203 : Prog (BitVec 64) :=
.seq globalBody635_202 globalBody635_1

def globalBody635_204 : Prog (BitVec 64) :=
.seq globalBody635_203 globalBody635_3

def globalBody635_205 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "b5"])

def globalBody635_206 : Prog (BitVec 64) :=
.seq globalBody635_204 globalBody635_205

def globalBody635_207 : Prog (BitVec 64) :=
.seq globalBody635_206 globalBody635_1

def globalBody635_208 : Prog (BitVec 64) :=
.seq globalBody635_207 globalBody635_3

def globalBody635_209 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "b4"])

def globalBody635_210 : Prog (BitVec 64) :=
.seq globalBody635_208 globalBody635_209

def globalBody635_211 : Prog (BitVec 64) :=
.seq globalBody635_210 globalBody635_1

def globalBody635_212 : Prog (BitVec 64) :=
.seq globalBody635_211 globalBody635_3

def globalBody635_213 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "b3"])

def globalBody635_214 : Prog (BitVec 64) :=
.seq globalBody635_212 globalBody635_213

def globalBody635_215 : Prog (BitVec 64) :=
.seq globalBody635_214 globalBody635_1

def globalBody635_216 : Prog (BitVec 64) :=
.seq globalBody635_215 globalBody635_3

def globalBody635_217 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "b2"])

def globalBody635_218 : Prog (BitVec 64) :=
.seq globalBody635_216 globalBody635_217

def globalBody635_219 : Prog (BitVec 64) :=
.seq globalBody635_218 globalBody635_1

def globalBody635_220 : Prog (BitVec 64) :=
.seq globalBody635_219 globalBody635_3

def globalBody635_221 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "b1"])

def globalBody635_222 : Prog (BitVec 64) :=
.seq globalBody635_220 globalBody635_221

def globalBody635_223 : Prog (BitVec 64) :=
.seq globalBody635_222 globalBody635_1

def globalBody635_224 : Prog (BitVec 64) :=
.seq globalBody635_223 globalBody635_3

def globalBody635_225 : Prog (BitVec 64) :=
.seq globalBody635_224 globalBody635_5

def globalBody635_226 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d8"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody635_227 : Prog (BitVec 64) :=
.seq globalBody635_225 globalBody635_226

def globalBody635_228 : Prog (BitVec 64) :=
.seq globalBody635_227 globalBody635_9

def globalBody635_229 : Prog (BitVec 64) :=
.seq globalBody635_228 globalBody635_11

def globalBody635_230 : Prog (BitVec 64) :=
.seq globalBody635_229 globalBody635_13

def globalBody635_231 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "b7"])

def globalBody635_232 : Prog (BitVec 64) :=
.seq globalBody635_230 globalBody635_231

def globalBody635_233 : Prog (BitVec 64) :=
.seq globalBody635_232 globalBody635_1

def globalBody635_234 : Prog (BitVec 64) :=
.seq globalBody635_233 globalBody635_3

def globalBody635_235 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "b6"])

def globalBody635_236 : Prog (BitVec 64) :=
.seq globalBody635_234 globalBody635_235

def globalBody635_237 : Prog (BitVec 64) :=
.seq globalBody635_236 globalBody635_1

def globalBody635_238 : Prog (BitVec 64) :=
.seq globalBody635_237 globalBody635_3

def globalBody635_239 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "b5"])

def globalBody635_240 : Prog (BitVec 64) :=
.seq globalBody635_238 globalBody635_239

def globalBody635_241 : Prog (BitVec 64) :=
.seq globalBody635_240 globalBody635_1

def globalBody635_242 : Prog (BitVec 64) :=
.seq globalBody635_241 globalBody635_3

def globalBody635_243 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "b4"])

def globalBody635_244 : Prog (BitVec 64) :=
.seq globalBody635_242 globalBody635_243

def globalBody635_245 : Prog (BitVec 64) :=
.seq globalBody635_244 globalBody635_1

def globalBody635_246 : Prog (BitVec 64) :=
.seq globalBody635_245 globalBody635_3

def globalBody635_247 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "b3"])

def globalBody635_248 : Prog (BitVec 64) :=
.seq globalBody635_246 globalBody635_247

def globalBody635_249 : Prog (BitVec 64) :=
.seq globalBody635_248 globalBody635_1

def globalBody635_250 : Prog (BitVec 64) :=
.seq globalBody635_249 globalBody635_3

def globalBody635_251 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "b2"])

def globalBody635_252 : Prog (BitVec 64) :=
.seq globalBody635_250 globalBody635_251

def globalBody635_253 : Prog (BitVec 64) :=
.seq globalBody635_252 globalBody635_1

def globalBody635_254 : Prog (BitVec 64) :=
.seq globalBody635_253 globalBody635_3

def globalBody635_255 : Prog (BitVec 64) :=
.seq globalBody635_254 globalBody635_5

def globalBody635_256 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d9"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody635_257 : Prog (BitVec 64) :=
.seq globalBody635_255 globalBody635_256

def globalBody635_258 : Prog (BitVec 64) :=
.seq globalBody635_257 globalBody635_9

def globalBody635_259 : Prog (BitVec 64) :=
.seq globalBody635_258 globalBody635_11

def globalBody635_260 : Prog (BitVec 64) :=
.seq globalBody635_259 globalBody635_13

def globalBody635_261 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "b7"])

def globalBody635_262 : Prog (BitVec 64) :=
.seq globalBody635_260 globalBody635_261

def globalBody635_263 : Prog (BitVec 64) :=
.seq globalBody635_262 globalBody635_1

def globalBody635_264 : Prog (BitVec 64) :=
.seq globalBody635_263 globalBody635_3

def globalBody635_265 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "b6"])

def globalBody635_266 : Prog (BitVec 64) :=
.seq globalBody635_264 globalBody635_265

def globalBody635_267 : Prog (BitVec 64) :=
.seq globalBody635_266 globalBody635_1

def globalBody635_268 : Prog (BitVec 64) :=
.seq globalBody635_267 globalBody635_3

def globalBody635_269 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "b5"])

def globalBody635_270 : Prog (BitVec 64) :=
.seq globalBody635_268 globalBody635_269

def globalBody635_271 : Prog (BitVec 64) :=
.seq globalBody635_270 globalBody635_1

def globalBody635_272 : Prog (BitVec 64) :=
.seq globalBody635_271 globalBody635_3

def globalBody635_273 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "b4"])

def globalBody635_274 : Prog (BitVec 64) :=
.seq globalBody635_272 globalBody635_273

def globalBody635_275 : Prog (BitVec 64) :=
.seq globalBody635_274 globalBody635_1

def globalBody635_276 : Prog (BitVec 64) :=
.seq globalBody635_275 globalBody635_3

def globalBody635_277 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "b3"])

def globalBody635_278 : Prog (BitVec 64) :=
.seq globalBody635_276 globalBody635_277

def globalBody635_279 : Prog (BitVec 64) :=
.seq globalBody635_278 globalBody635_1

def globalBody635_280 : Prog (BitVec 64) :=
.seq globalBody635_279 globalBody635_3

def globalBody635_281 : Prog (BitVec 64) :=
.seq globalBody635_280 globalBody635_5

def globalBody635_282 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d10"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody635_283 : Prog (BitVec 64) :=
.seq globalBody635_281 globalBody635_282

def globalBody635_284 : Prog (BitVec 64) :=
.seq globalBody635_283 globalBody635_9

def globalBody635_285 : Prog (BitVec 64) :=
.seq globalBody635_284 globalBody635_11

def globalBody635_286 : Prog (BitVec 64) :=
.seq globalBody635_285 globalBody635_13

def globalBody635_287 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "b7"])

def globalBody635_288 : Prog (BitVec 64) :=
.seq globalBody635_286 globalBody635_287

def globalBody635_289 : Prog (BitVec 64) :=
.seq globalBody635_288 globalBody635_1

def globalBody635_290 : Prog (BitVec 64) :=
.seq globalBody635_289 globalBody635_3

def globalBody635_291 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "b6"])

def globalBody635_292 : Prog (BitVec 64) :=
.seq globalBody635_290 globalBody635_291

def globalBody635_293 : Prog (BitVec 64) :=
.seq globalBody635_292 globalBody635_1

def globalBody635_294 : Prog (BitVec 64) :=
.seq globalBody635_293 globalBody635_3

def globalBody635_295 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "b5"])

def globalBody635_296 : Prog (BitVec 64) :=
.seq globalBody635_294 globalBody635_295

def globalBody635_297 : Prog (BitVec 64) :=
.seq globalBody635_296 globalBody635_1

def globalBody635_298 : Prog (BitVec 64) :=
.seq globalBody635_297 globalBody635_3

def globalBody635_299 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "b4"])

def globalBody635_300 : Prog (BitVec 64) :=
.seq globalBody635_298 globalBody635_299

def globalBody635_301 : Prog (BitVec 64) :=
.seq globalBody635_300 globalBody635_1

def globalBody635_302 : Prog (BitVec 64) :=
.seq globalBody635_301 globalBody635_3

def globalBody635_303 : Prog (BitVec 64) :=
.seq globalBody635_302 globalBody635_5

def globalBody635_304 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d11"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody635_305 : Prog (BitVec 64) :=
.seq globalBody635_303 globalBody635_304

def globalBody635_306 : Prog (BitVec 64) :=
.seq globalBody635_305 globalBody635_9

def globalBody635_307 : Prog (BitVec 64) :=
.seq globalBody635_306 globalBody635_11

def globalBody635_308 : Prog (BitVec 64) :=
.seq globalBody635_307 globalBody635_13

def globalBody635_309 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "b7"])

def globalBody635_310 : Prog (BitVec 64) :=
.seq globalBody635_308 globalBody635_309

def globalBody635_311 : Prog (BitVec 64) :=
.seq globalBody635_310 globalBody635_1

def globalBody635_312 : Prog (BitVec 64) :=
.seq globalBody635_311 globalBody635_3

def globalBody635_313 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "b6"])

def globalBody635_314 : Prog (BitVec 64) :=
.seq globalBody635_312 globalBody635_313

def globalBody635_315 : Prog (BitVec 64) :=
.seq globalBody635_314 globalBody635_1

def globalBody635_316 : Prog (BitVec 64) :=
.seq globalBody635_315 globalBody635_3

def globalBody635_317 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "b5"])

def globalBody635_318 : Prog (BitVec 64) :=
.seq globalBody635_316 globalBody635_317

def globalBody635_319 : Prog (BitVec 64) :=
.seq globalBody635_318 globalBody635_1

def globalBody635_320 : Prog (BitVec 64) :=
.seq globalBody635_319 globalBody635_3

def globalBody635_321 : Prog (BitVec 64) :=
.seq globalBody635_320 globalBody635_5

def globalBody635_322 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d12"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody635_323 : Prog (BitVec 64) :=
.seq globalBody635_321 globalBody635_322

def globalBody635_324 : Prog (BitVec 64) :=
.seq globalBody635_323 globalBody635_9

def globalBody635_325 : Prog (BitVec 64) :=
.seq globalBody635_324 globalBody635_11

def globalBody635_326 : Prog (BitVec 64) :=
.seq globalBody635_325 globalBody635_13

def globalBody635_327 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "b7"])

def globalBody635_328 : Prog (BitVec 64) :=
.seq globalBody635_326 globalBody635_327

def globalBody635_329 : Prog (BitVec 64) :=
.seq globalBody635_328 globalBody635_1

def globalBody635_330 : Prog (BitVec 64) :=
.seq globalBody635_329 globalBody635_3

def globalBody635_331 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "b6"])

def globalBody635_332 : Prog (BitVec 64) :=
.seq globalBody635_330 globalBody635_331

def globalBody635_333 : Prog (BitVec 64) :=
.seq globalBody635_332 globalBody635_1

def globalBody635_334 : Prog (BitVec 64) :=
.seq globalBody635_333 globalBody635_3

def globalBody635_335 : Prog (BitVec 64) :=
.seq globalBody635_334 globalBody635_5

def globalBody635_336 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d13"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody635_337 : Prog (BitVec 64) :=
.seq globalBody635_335 globalBody635_336

def globalBody635_338 : Prog (BitVec 64) :=
.seq globalBody635_337 globalBody635_9

def globalBody635_339 : Prog (BitVec 64) :=
.seq globalBody635_338 globalBody635_11

def globalBody635_340 : Prog (BitVec 64) :=
.seq globalBody635_339 globalBody635_13

def globalBody635_341 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "b7"])

def globalBody635_342 : Prog (BitVec 64) :=
.seq globalBody635_340 globalBody635_341

def globalBody635_343 : Prog (BitVec 64) :=
.seq globalBody635_342 globalBody635_1

def globalBody635_344 : Prog (BitVec 64) :=
.seq globalBody635_343 globalBody635_3

def globalBody635_345 : Prog (BitVec 64) :=
.seq globalBody635_344 globalBody635_5

def globalBody635_346 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d14"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody635_347 : Prog (BitVec 64) :=
.seq globalBody635_345 globalBody635_346

def globalBody635_348 : Prog (BitVec 64) :=
.seq globalBody635_347 globalBody635_9

def globalBody635_349 : Prog (BitVec 64) :=
.seq globalBody635_348 globalBody635_11

def globalBody635_350 : Prog (BitVec 64) :=
.seq globalBody635_349 globalBody635_13

def globalBody635_351 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d15" (Flapjack.Exp.var Flapjack.VarKind.local "c")

def globalBody635_352 : Prog (BitVec 64) :=
.seq globalBody635_350 globalBody635_351

def globalBody635_353 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.shift Flapjack.Shift.asr (Flapjack.Exp.var Flapjack.VarKind.local "t0") (Flapjack.Exp.const 32#64))

def globalBody635_354 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody635_355 : Prog (BitVec 64) :=
.seq globalBody635_353 globalBody635_354

def globalBody635_356 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.shift Flapjack.Shift.asr (Flapjack.Exp.var Flapjack.VarKind.local "col") (Flapjack.Exp.const 32#64))

def globalBody635_357 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody635_358 : Prog (BitVec 64) :=
.seq globalBody635_356 globalBody635_357

def globalBody635_359 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t3", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody635_360 : Prog (BitVec 64) :=
.seq globalBody635_356 globalBody635_359

def globalBody635_361 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t4", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody635_362 : Prog (BitVec 64) :=
.seq globalBody635_356 globalBody635_361

def globalBody635_363 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t5", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody635_364 : Prog (BitVec 64) :=
.seq globalBody635_356 globalBody635_363

def globalBody635_365 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t6", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody635_366 : Prog (BitVec 64) :=
.seq globalBody635_356 globalBody635_365

def globalBody635_367 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t7", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody635_368 : Prog (BitVec 64) :=
.seq globalBody635_356 globalBody635_367

def globalBody635_369 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "r"
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "sa"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "sa"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "sa"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "sa")])

def globalBody635_370 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "sa")])

def globalBody635_371 : Prog (BitVec 64) :=
.seq globalBody635_369 globalBody635_370

def globalBody635_372 : Prog (BitVec 64) :=
.decCall ("sa") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_add_carry") ([Flapjack.Exp.var Flapjack.VarKind.local "r",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 4294967295#64, Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 18446744069414584321#64]]) globalBody635_371

def globalBody635_373 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "c") (Flapjack.Exp.const 0#64)) globalBody635_372

def globalBody635_374 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "r"), none)) "u256_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "r",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 4294967295#64, Flapjack.Exp.const 0#64,
        Flapjack.Exp.const 18446744069414584321#64]]

def globalBody635_375 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "ltp"])

def globalBody635_376 : Prog (BitVec 64) :=
.seq globalBody635_374 globalBody635_375

def globalBody635_377 : Prog (BitVec 64) :=
.decCall ("ltp") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "r",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 4294967295#64, Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 18446744069414584321#64]]) globalBody635_376

def globalBody635_378 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "c")) globalBody635_377

def globalBody635_379 : Prog (BitVec 64) :=
.seq globalBody635_373 globalBody635_378

def globalBody635_380 : Prog (BitVec 64) :=
Flapjack.Prog.call none "p256_fp_reduce" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def globalBody635_381 : Prog (BitVec 64) :=
.seq globalBody635_379 globalBody635_380

def globalBody635_382 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.op Flapjack.BinOp.or
      [Flapjack.Exp.var Flapjack.VarKind.local "v0",
        Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "v1")
          (Flapjack.Exp.const 32#64)],
    Flapjack.Exp.op Flapjack.BinOp.or
      [Flapjack.Exp.var Flapjack.VarKind.local "v2",
        Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "v3")
          (Flapjack.Exp.const 32#64)],
    Flapjack.Exp.op Flapjack.BinOp.or
      [Flapjack.Exp.var Flapjack.VarKind.local "v4",
        Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "v5")
          (Flapjack.Exp.const 32#64)],
    Flapjack.Exp.op Flapjack.BinOp.or
      [Flapjack.Exp.var Flapjack.VarKind.local "v6",
        Flapjack.Exp.shift Flapjack.Shift.lsl (Flapjack.Exp.var Flapjack.VarKind.local "v7")
          (Flapjack.Exp.const 32#64)]]) globalBody635_381

def globalBody635_383 : Prog (BitVec 64) :=
.seq globalBody635_356 globalBody635_382

def globalBody635_384 : Prog (BitVec 64) :=
.dec ("v7") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody635_383

def globalBody635_385 : Prog (BitVec 64) :=
.seq globalBody635_368 globalBody635_384

def globalBody635_386 : Prog (BitVec 64) :=
.dec ("v6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody635_385

def globalBody635_387 : Prog (BitVec 64) :=
.seq globalBody635_366 globalBody635_386

def globalBody635_388 : Prog (BitVec 64) :=
.dec ("v5") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody635_387

def globalBody635_389 : Prog (BitVec 64) :=
.seq globalBody635_364 globalBody635_388

def globalBody635_390 : Prog (BitVec 64) :=
.dec ("v4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody635_389

def globalBody635_391 : Prog (BitVec 64) :=
.seq globalBody635_362 globalBody635_390

def globalBody635_392 : Prog (BitVec 64) :=
.dec ("v3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody635_391

def globalBody635_393 : Prog (BitVec 64) :=
.seq globalBody635_360 globalBody635_392

def globalBody635_394 : Prog (BitVec 64) :=
.dec ("v2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody635_393

def globalBody635_395 : Prog (BitVec 64) :=
.seq globalBody635_358 globalBody635_394

def globalBody635_396 : Prog (BitVec 64) :=
.dec ("v1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody635_395

def globalBody635_397 : Prog (BitVec 64) :=
.seq globalBody635_355 globalBody635_396

def globalBody635_398 : Prog (BitVec 64) :=
.dec ("v0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "t0", Flapjack.Exp.const 4294967295#64]) globalBody635_397

def globalBody635_399 : Prog (BitVec 64) :=
.dec ("t7") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.op Flapjack.BinOp.sub
              [Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.var Flapjack.VarKind.local "d7", Flapjack.Exp.var Flapjack.VarKind.local "d15",
                    Flapjack.Exp.var Flapjack.VarKind.local "d15", Flapjack.Exp.var Flapjack.VarKind.local "d15",
                    Flapjack.Exp.var Flapjack.VarKind.local "d8"],
                Flapjack.Exp.var Flapjack.VarKind.local "d10"],
            Flapjack.Exp.var Flapjack.VarKind.local "d11"],
        Flapjack.Exp.var Flapjack.VarKind.local "d12"],
    Flapjack.Exp.var Flapjack.VarKind.local "d13"]) globalBody635_398

def globalBody635_400 : Prog (BitVec 64) :=
.dec ("t6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "d6", Flapjack.Exp.var Flapjack.VarKind.local "d14",
            Flapjack.Exp.var Flapjack.VarKind.local "d14", Flapjack.Exp.var Flapjack.VarKind.local "d15",
            Flapjack.Exp.var Flapjack.VarKind.local "d15", Flapjack.Exp.var Flapjack.VarKind.local "d14",
            Flapjack.Exp.var Flapjack.VarKind.local "d13"],
        Flapjack.Exp.var Flapjack.VarKind.local "d8"],
    Flapjack.Exp.var Flapjack.VarKind.local "d9"]) globalBody635_399

def globalBody635_401 : Prog (BitVec 64) :=
.dec ("t5") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "d5", Flapjack.Exp.var Flapjack.VarKind.local "d13",
            Flapjack.Exp.var Flapjack.VarKind.local "d13", Flapjack.Exp.var Flapjack.VarKind.local "d14",
            Flapjack.Exp.var Flapjack.VarKind.local "d14", Flapjack.Exp.var Flapjack.VarKind.local "d15"],
        Flapjack.Exp.var Flapjack.VarKind.local "d10"],
    Flapjack.Exp.var Flapjack.VarKind.local "d11"]) globalBody635_400

def globalBody635_402 : Prog (BitVec 64) :=
.dec ("t4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "d4", Flapjack.Exp.var Flapjack.VarKind.local "d12",
            Flapjack.Exp.var Flapjack.VarKind.local "d12", Flapjack.Exp.var Flapjack.VarKind.local "d13",
            Flapjack.Exp.var Flapjack.VarKind.local "d13", Flapjack.Exp.var Flapjack.VarKind.local "d14"],
        Flapjack.Exp.var Flapjack.VarKind.local "d9"],
    Flapjack.Exp.var Flapjack.VarKind.local "d10"]) globalBody635_401

def globalBody635_403 : Prog (BitVec 64) :=
.dec ("t3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "d3", Flapjack.Exp.var Flapjack.VarKind.local "d11",
                Flapjack.Exp.var Flapjack.VarKind.local "d11", Flapjack.Exp.var Flapjack.VarKind.local "d12",
                Flapjack.Exp.var Flapjack.VarKind.local "d12", Flapjack.Exp.var Flapjack.VarKind.local "d13"],
            Flapjack.Exp.var Flapjack.VarKind.local "d15"],
        Flapjack.Exp.var Flapjack.VarKind.local "d8"],
    Flapjack.Exp.var Flapjack.VarKind.local "d9"]) globalBody635_402

def globalBody635_404 : Prog (BitVec 64) :=
.dec ("t2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "d2", Flapjack.Exp.var Flapjack.VarKind.local "d10",
                Flapjack.Exp.var Flapjack.VarKind.local "d11"],
            Flapjack.Exp.var Flapjack.VarKind.local "d13"],
        Flapjack.Exp.var Flapjack.VarKind.local "d14"],
    Flapjack.Exp.var Flapjack.VarKind.local "d15"]) globalBody635_403

def globalBody635_405 : Prog (BitVec 64) :=
.dec ("t1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.op Flapjack.BinOp.sub
              [Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.var Flapjack.VarKind.local "d1", Flapjack.Exp.var Flapjack.VarKind.local "d9",
                    Flapjack.Exp.var Flapjack.VarKind.local "d10"],
                Flapjack.Exp.var Flapjack.VarKind.local "d12"],
            Flapjack.Exp.var Flapjack.VarKind.local "d13"],
        Flapjack.Exp.var Flapjack.VarKind.local "d14"],
    Flapjack.Exp.var Flapjack.VarKind.local "d15"]) globalBody635_404

def globalBody635_406 : Prog (BitVec 64) :=
.dec ("t0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.op Flapjack.BinOp.sub
              [Flapjack.Exp.op Flapjack.BinOp.add
                  [Flapjack.Exp.var Flapjack.VarKind.local "d0", Flapjack.Exp.var Flapjack.VarKind.local "d8",
                    Flapjack.Exp.var Flapjack.VarKind.local "d9"],
                Flapjack.Exp.var Flapjack.VarKind.local "d11"],
            Flapjack.Exp.var Flapjack.VarKind.local "d12"],
        Flapjack.Exp.var Flapjack.VarKind.local "d13"],
    Flapjack.Exp.var Flapjack.VarKind.local "d14"]) globalBody635_405

def globalBody635_407 : Prog (BitVec 64) :=
.seq globalBody635_352 globalBody635_406

def globalBody635_408 : Prog (BitVec 64) :=
.dec ("d15") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody635_407

def globalBody635_409 : Prog (BitVec 64) :=
.dec ("d14") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody635_408

def globalBody635_410 : Prog (BitVec 64) :=
.dec ("d13") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody635_409

def globalBody635_411 : Prog (BitVec 64) :=
.dec ("d12") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody635_410

def globalBody635_412 : Prog (BitVec 64) :=
.dec ("d11") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody635_411

def globalBody635_413 : Prog (BitVec 64) :=
.dec ("d10") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody635_412

def globalBody635_414 : Prog (BitVec 64) :=
.dec ("d9") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody635_413

def globalBody635_415 : Prog (BitVec 64) :=
.dec ("d8") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody635_414

def globalBody635_416 : Prog (BitVec 64) :=
.dec ("d7") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody635_415

def globalBody635_417 : Prog (BitVec 64) :=
.dec ("d6") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody635_416

def globalBody635_418 : Prog (BitVec 64) :=
.dec ("d5") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody635_417

def globalBody635_419 : Prog (BitVec 64) :=
.dec ("d4") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody635_418

def globalBody635_420 : Prog (BitVec 64) :=
.dec ("d3") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody635_419

def globalBody635_421 : Prog (BitVec 64) :=
.dec ("d2") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody635_420

def globalBody635_422 : Prog (BitVec 64) :=
.dec ("d1") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody635_421

def globalBody635_423 : Prog (BitVec 64) :=
.dec ("d0") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody635_422

def globalBody635_424 : Prog (BitVec 64) :=
.dec ("col") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody635_423

def globalBody635_425 : Prog (BitVec 64) :=
.dec ("c") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody635_424

def globalBody635_426 : Prog (BitVec 64) :=
.dec ("H") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody635_425

def globalBody635_427 : Prog (BitVec 64) :=
.dec ("L") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody635_426

def globalBody635_428 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody635_427

def globalBody635_429 : Prog (BitVec 64) :=
.dec ("b7") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b"))
  (Flapjack.Exp.const 32#64)) globalBody635_428

def globalBody635_430 : Prog (BitVec 64) :=
.dec ("b6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b"), Flapjack.Exp.const 4294967295#64]) globalBody635_429

def globalBody635_431 : Prog (BitVec 64) :=
.dec ("b5") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"))
  (Flapjack.Exp.const 32#64)) globalBody635_430

def globalBody635_432 : Prog (BitVec 64) :=
.dec ("b4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"), Flapjack.Exp.const 4294967295#64]) globalBody635_431

def globalBody635_433 : Prog (BitVec 64) :=
.dec ("b3") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"))
  (Flapjack.Exp.const 32#64)) globalBody635_432

def globalBody635_434 : Prog (BitVec 64) :=
.dec ("b2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"), Flapjack.Exp.const 4294967295#64]) globalBody635_433

def globalBody635_435 : Prog (BitVec 64) :=
.dec ("b1") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b"))
  (Flapjack.Exp.const 32#64)) globalBody635_434

def globalBody635_436 : Prog (BitVec 64) :=
.dec ("b0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b"), Flapjack.Exp.const 4294967295#64]) globalBody635_435

def globalBody635_437 : Prog (BitVec 64) :=
.dec ("a7") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) globalBody635_436

def globalBody635_438 : Prog (BitVec 64) :=
.dec ("a6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) globalBody635_437

def globalBody635_439 : Prog (BitVec 64) :=
.dec ("a5") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) globalBody635_438

def globalBody635_440 : Prog (BitVec 64) :=
.dec ("a4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) globalBody635_439

def globalBody635_441 : Prog (BitVec 64) :=
.dec ("a3") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) globalBody635_440

def globalBody635_442 : Prog (BitVec 64) :=
.dec ("a2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) globalBody635_441

def globalBody635_443 : Prog (BitVec 64) :=
.dec ("a1") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) globalBody635_442

def globalBody635_444 : Prog (BitVec 64) :=
.dec ("a0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) globalBody635_443

def globalData635 : Decl (BitVec 64) :=
.function { name := "p256_fp_mul", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody635_444, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput635 := Pancake.PanLang.declToHOL globalData635
end InitECandidate.Proofs.FrontendStages.Declarations
