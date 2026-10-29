import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data154
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate137
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody154_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b0"])

def globalBody154_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "L"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "L",
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 4294967295#64]])

def globalBody154_2 : Prog (BitVec 64) :=
.seq globalBody154_0 globalBody154_1

def globalBody154_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "H"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "H",
      Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "p") (Flapjack.Exp.const 32#64)])

def globalBody154_4 : Prog (BitVec 64) :=
.seq globalBody154_2 globalBody154_3

def globalBody154_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "L", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody154_6 : Prog (BitVec 64) :=
.seq globalBody154_4 globalBody154_5

def globalBody154_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d0"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody154_8 : Prog (BitVec 64) :=
.seq globalBody154_6 globalBody154_7

def globalBody154_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "col") (Flapjack.Exp.const 32#64),
      Flapjack.Exp.var Flapjack.VarKind.local "H"])

def globalBody154_10 : Prog (BitVec 64) :=
.seq globalBody154_8 globalBody154_9

def globalBody154_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "L" (Flapjack.Exp.const 0#64)

def globalBody154_12 : Prog (BitVec 64) :=
.seq globalBody154_10 globalBody154_11

def globalBody154_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "H" (Flapjack.Exp.const 0#64)

def globalBody154_14 : Prog (BitVec 64) :=
.seq globalBody154_12 globalBody154_13

def globalBody154_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b1"])

def globalBody154_16 : Prog (BitVec 64) :=
.seq globalBody154_14 globalBody154_15

def globalBody154_17 : Prog (BitVec 64) :=
.seq globalBody154_16 globalBody154_1

def globalBody154_18 : Prog (BitVec 64) :=
.seq globalBody154_17 globalBody154_3

def globalBody154_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b0"])

def globalBody154_20 : Prog (BitVec 64) :=
.seq globalBody154_18 globalBody154_19

def globalBody154_21 : Prog (BitVec 64) :=
.seq globalBody154_20 globalBody154_1

def globalBody154_22 : Prog (BitVec 64) :=
.seq globalBody154_21 globalBody154_3

def globalBody154_23 : Prog (BitVec 64) :=
.seq globalBody154_22 globalBody154_5

def globalBody154_24 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d1"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody154_25 : Prog (BitVec 64) :=
.seq globalBody154_23 globalBody154_24

def globalBody154_26 : Prog (BitVec 64) :=
.seq globalBody154_25 globalBody154_9

def globalBody154_27 : Prog (BitVec 64) :=
.seq globalBody154_26 globalBody154_11

def globalBody154_28 : Prog (BitVec 64) :=
.seq globalBody154_27 globalBody154_13

def globalBody154_29 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b2"])

def globalBody154_30 : Prog (BitVec 64) :=
.seq globalBody154_28 globalBody154_29

def globalBody154_31 : Prog (BitVec 64) :=
.seq globalBody154_30 globalBody154_1

def globalBody154_32 : Prog (BitVec 64) :=
.seq globalBody154_31 globalBody154_3

def globalBody154_33 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b1"])

def globalBody154_34 : Prog (BitVec 64) :=
.seq globalBody154_32 globalBody154_33

def globalBody154_35 : Prog (BitVec 64) :=
.seq globalBody154_34 globalBody154_1

def globalBody154_36 : Prog (BitVec 64) :=
.seq globalBody154_35 globalBody154_3

def globalBody154_37 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "b0"])

def globalBody154_38 : Prog (BitVec 64) :=
.seq globalBody154_36 globalBody154_37

def globalBody154_39 : Prog (BitVec 64) :=
.seq globalBody154_38 globalBody154_1

def globalBody154_40 : Prog (BitVec 64) :=
.seq globalBody154_39 globalBody154_3

def globalBody154_41 : Prog (BitVec 64) :=
.seq globalBody154_40 globalBody154_5

def globalBody154_42 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d2"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody154_43 : Prog (BitVec 64) :=
.seq globalBody154_41 globalBody154_42

def globalBody154_44 : Prog (BitVec 64) :=
.seq globalBody154_43 globalBody154_9

def globalBody154_45 : Prog (BitVec 64) :=
.seq globalBody154_44 globalBody154_11

def globalBody154_46 : Prog (BitVec 64) :=
.seq globalBody154_45 globalBody154_13

def globalBody154_47 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b3"])

def globalBody154_48 : Prog (BitVec 64) :=
.seq globalBody154_46 globalBody154_47

def globalBody154_49 : Prog (BitVec 64) :=
.seq globalBody154_48 globalBody154_1

def globalBody154_50 : Prog (BitVec 64) :=
.seq globalBody154_49 globalBody154_3

def globalBody154_51 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b2"])

def globalBody154_52 : Prog (BitVec 64) :=
.seq globalBody154_50 globalBody154_51

def globalBody154_53 : Prog (BitVec 64) :=
.seq globalBody154_52 globalBody154_1

def globalBody154_54 : Prog (BitVec 64) :=
.seq globalBody154_53 globalBody154_3

def globalBody154_55 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "b1"])

def globalBody154_56 : Prog (BitVec 64) :=
.seq globalBody154_54 globalBody154_55

def globalBody154_57 : Prog (BitVec 64) :=
.seq globalBody154_56 globalBody154_1

def globalBody154_58 : Prog (BitVec 64) :=
.seq globalBody154_57 globalBody154_3

def globalBody154_59 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "b0"])

def globalBody154_60 : Prog (BitVec 64) :=
.seq globalBody154_58 globalBody154_59

def globalBody154_61 : Prog (BitVec 64) :=
.seq globalBody154_60 globalBody154_1

def globalBody154_62 : Prog (BitVec 64) :=
.seq globalBody154_61 globalBody154_3

def globalBody154_63 : Prog (BitVec 64) :=
.seq globalBody154_62 globalBody154_5

def globalBody154_64 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d3"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody154_65 : Prog (BitVec 64) :=
.seq globalBody154_63 globalBody154_64

def globalBody154_66 : Prog (BitVec 64) :=
.seq globalBody154_65 globalBody154_9

def globalBody154_67 : Prog (BitVec 64) :=
.seq globalBody154_66 globalBody154_11

def globalBody154_68 : Prog (BitVec 64) :=
.seq globalBody154_67 globalBody154_13

def globalBody154_69 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b4"])

def globalBody154_70 : Prog (BitVec 64) :=
.seq globalBody154_68 globalBody154_69

def globalBody154_71 : Prog (BitVec 64) :=
.seq globalBody154_70 globalBody154_1

def globalBody154_72 : Prog (BitVec 64) :=
.seq globalBody154_71 globalBody154_3

def globalBody154_73 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b3"])

def globalBody154_74 : Prog (BitVec 64) :=
.seq globalBody154_72 globalBody154_73

def globalBody154_75 : Prog (BitVec 64) :=
.seq globalBody154_74 globalBody154_1

def globalBody154_76 : Prog (BitVec 64) :=
.seq globalBody154_75 globalBody154_3

def globalBody154_77 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "b2"])

def globalBody154_78 : Prog (BitVec 64) :=
.seq globalBody154_76 globalBody154_77

def globalBody154_79 : Prog (BitVec 64) :=
.seq globalBody154_78 globalBody154_1

def globalBody154_80 : Prog (BitVec 64) :=
.seq globalBody154_79 globalBody154_3

def globalBody154_81 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "b1"])

def globalBody154_82 : Prog (BitVec 64) :=
.seq globalBody154_80 globalBody154_81

def globalBody154_83 : Prog (BitVec 64) :=
.seq globalBody154_82 globalBody154_1

def globalBody154_84 : Prog (BitVec 64) :=
.seq globalBody154_83 globalBody154_3

def globalBody154_85 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "b0"])

def globalBody154_86 : Prog (BitVec 64) :=
.seq globalBody154_84 globalBody154_85

def globalBody154_87 : Prog (BitVec 64) :=
.seq globalBody154_86 globalBody154_1

def globalBody154_88 : Prog (BitVec 64) :=
.seq globalBody154_87 globalBody154_3

def globalBody154_89 : Prog (BitVec 64) :=
.seq globalBody154_88 globalBody154_5

def globalBody154_90 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d4"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody154_91 : Prog (BitVec 64) :=
.seq globalBody154_89 globalBody154_90

def globalBody154_92 : Prog (BitVec 64) :=
.seq globalBody154_91 globalBody154_9

def globalBody154_93 : Prog (BitVec 64) :=
.seq globalBody154_92 globalBody154_11

def globalBody154_94 : Prog (BitVec 64) :=
.seq globalBody154_93 globalBody154_13

def globalBody154_95 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b5"])

def globalBody154_96 : Prog (BitVec 64) :=
.seq globalBody154_94 globalBody154_95

def globalBody154_97 : Prog (BitVec 64) :=
.seq globalBody154_96 globalBody154_1

def globalBody154_98 : Prog (BitVec 64) :=
.seq globalBody154_97 globalBody154_3

def globalBody154_99 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b4"])

def globalBody154_100 : Prog (BitVec 64) :=
.seq globalBody154_98 globalBody154_99

def globalBody154_101 : Prog (BitVec 64) :=
.seq globalBody154_100 globalBody154_1

def globalBody154_102 : Prog (BitVec 64) :=
.seq globalBody154_101 globalBody154_3

def globalBody154_103 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "b3"])

def globalBody154_104 : Prog (BitVec 64) :=
.seq globalBody154_102 globalBody154_103

def globalBody154_105 : Prog (BitVec 64) :=
.seq globalBody154_104 globalBody154_1

def globalBody154_106 : Prog (BitVec 64) :=
.seq globalBody154_105 globalBody154_3

def globalBody154_107 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "b2"])

def globalBody154_108 : Prog (BitVec 64) :=
.seq globalBody154_106 globalBody154_107

def globalBody154_109 : Prog (BitVec 64) :=
.seq globalBody154_108 globalBody154_1

def globalBody154_110 : Prog (BitVec 64) :=
.seq globalBody154_109 globalBody154_3

def globalBody154_111 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "b1"])

def globalBody154_112 : Prog (BitVec 64) :=
.seq globalBody154_110 globalBody154_111

def globalBody154_113 : Prog (BitVec 64) :=
.seq globalBody154_112 globalBody154_1

def globalBody154_114 : Prog (BitVec 64) :=
.seq globalBody154_113 globalBody154_3

def globalBody154_115 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "b0"])

def globalBody154_116 : Prog (BitVec 64) :=
.seq globalBody154_114 globalBody154_115

def globalBody154_117 : Prog (BitVec 64) :=
.seq globalBody154_116 globalBody154_1

def globalBody154_118 : Prog (BitVec 64) :=
.seq globalBody154_117 globalBody154_3

def globalBody154_119 : Prog (BitVec 64) :=
.seq globalBody154_118 globalBody154_5

def globalBody154_120 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d5"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody154_121 : Prog (BitVec 64) :=
.seq globalBody154_119 globalBody154_120

def globalBody154_122 : Prog (BitVec 64) :=
.seq globalBody154_121 globalBody154_9

def globalBody154_123 : Prog (BitVec 64) :=
.seq globalBody154_122 globalBody154_11

def globalBody154_124 : Prog (BitVec 64) :=
.seq globalBody154_123 globalBody154_13

def globalBody154_125 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b6"])

def globalBody154_126 : Prog (BitVec 64) :=
.seq globalBody154_124 globalBody154_125

def globalBody154_127 : Prog (BitVec 64) :=
.seq globalBody154_126 globalBody154_1

def globalBody154_128 : Prog (BitVec 64) :=
.seq globalBody154_127 globalBody154_3

def globalBody154_129 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b5"])

def globalBody154_130 : Prog (BitVec 64) :=
.seq globalBody154_128 globalBody154_129

def globalBody154_131 : Prog (BitVec 64) :=
.seq globalBody154_130 globalBody154_1

def globalBody154_132 : Prog (BitVec 64) :=
.seq globalBody154_131 globalBody154_3

def globalBody154_133 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "b4"])

def globalBody154_134 : Prog (BitVec 64) :=
.seq globalBody154_132 globalBody154_133

def globalBody154_135 : Prog (BitVec 64) :=
.seq globalBody154_134 globalBody154_1

def globalBody154_136 : Prog (BitVec 64) :=
.seq globalBody154_135 globalBody154_3

def globalBody154_137 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "b3"])

def globalBody154_138 : Prog (BitVec 64) :=
.seq globalBody154_136 globalBody154_137

def globalBody154_139 : Prog (BitVec 64) :=
.seq globalBody154_138 globalBody154_1

def globalBody154_140 : Prog (BitVec 64) :=
.seq globalBody154_139 globalBody154_3

def globalBody154_141 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "b2"])

def globalBody154_142 : Prog (BitVec 64) :=
.seq globalBody154_140 globalBody154_141

def globalBody154_143 : Prog (BitVec 64) :=
.seq globalBody154_142 globalBody154_1

def globalBody154_144 : Prog (BitVec 64) :=
.seq globalBody154_143 globalBody154_3

def globalBody154_145 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "b1"])

def globalBody154_146 : Prog (BitVec 64) :=
.seq globalBody154_144 globalBody154_145

def globalBody154_147 : Prog (BitVec 64) :=
.seq globalBody154_146 globalBody154_1

def globalBody154_148 : Prog (BitVec 64) :=
.seq globalBody154_147 globalBody154_3

def globalBody154_149 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "b0"])

def globalBody154_150 : Prog (BitVec 64) :=
.seq globalBody154_148 globalBody154_149

def globalBody154_151 : Prog (BitVec 64) :=
.seq globalBody154_150 globalBody154_1

def globalBody154_152 : Prog (BitVec 64) :=
.seq globalBody154_151 globalBody154_3

def globalBody154_153 : Prog (BitVec 64) :=
.seq globalBody154_152 globalBody154_5

def globalBody154_154 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d6"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody154_155 : Prog (BitVec 64) :=
.seq globalBody154_153 globalBody154_154

def globalBody154_156 : Prog (BitVec 64) :=
.seq globalBody154_155 globalBody154_9

def globalBody154_157 : Prog (BitVec 64) :=
.seq globalBody154_156 globalBody154_11

def globalBody154_158 : Prog (BitVec 64) :=
.seq globalBody154_157 globalBody154_13

def globalBody154_159 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "b7"])

def globalBody154_160 : Prog (BitVec 64) :=
.seq globalBody154_158 globalBody154_159

def globalBody154_161 : Prog (BitVec 64) :=
.seq globalBody154_160 globalBody154_1

def globalBody154_162 : Prog (BitVec 64) :=
.seq globalBody154_161 globalBody154_3

def globalBody154_163 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b6"])

def globalBody154_164 : Prog (BitVec 64) :=
.seq globalBody154_162 globalBody154_163

def globalBody154_165 : Prog (BitVec 64) :=
.seq globalBody154_164 globalBody154_1

def globalBody154_166 : Prog (BitVec 64) :=
.seq globalBody154_165 globalBody154_3

def globalBody154_167 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "b5"])

def globalBody154_168 : Prog (BitVec 64) :=
.seq globalBody154_166 globalBody154_167

def globalBody154_169 : Prog (BitVec 64) :=
.seq globalBody154_168 globalBody154_1

def globalBody154_170 : Prog (BitVec 64) :=
.seq globalBody154_169 globalBody154_3

def globalBody154_171 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "b4"])

def globalBody154_172 : Prog (BitVec 64) :=
.seq globalBody154_170 globalBody154_171

def globalBody154_173 : Prog (BitVec 64) :=
.seq globalBody154_172 globalBody154_1

def globalBody154_174 : Prog (BitVec 64) :=
.seq globalBody154_173 globalBody154_3

def globalBody154_175 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "b3"])

def globalBody154_176 : Prog (BitVec 64) :=
.seq globalBody154_174 globalBody154_175

def globalBody154_177 : Prog (BitVec 64) :=
.seq globalBody154_176 globalBody154_1

def globalBody154_178 : Prog (BitVec 64) :=
.seq globalBody154_177 globalBody154_3

def globalBody154_179 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "b2"])

def globalBody154_180 : Prog (BitVec 64) :=
.seq globalBody154_178 globalBody154_179

def globalBody154_181 : Prog (BitVec 64) :=
.seq globalBody154_180 globalBody154_1

def globalBody154_182 : Prog (BitVec 64) :=
.seq globalBody154_181 globalBody154_3

def globalBody154_183 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "b1"])

def globalBody154_184 : Prog (BitVec 64) :=
.seq globalBody154_182 globalBody154_183

def globalBody154_185 : Prog (BitVec 64) :=
.seq globalBody154_184 globalBody154_1

def globalBody154_186 : Prog (BitVec 64) :=
.seq globalBody154_185 globalBody154_3

def globalBody154_187 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "b0"])

def globalBody154_188 : Prog (BitVec 64) :=
.seq globalBody154_186 globalBody154_187

def globalBody154_189 : Prog (BitVec 64) :=
.seq globalBody154_188 globalBody154_1

def globalBody154_190 : Prog (BitVec 64) :=
.seq globalBody154_189 globalBody154_3

def globalBody154_191 : Prog (BitVec 64) :=
.seq globalBody154_190 globalBody154_5

def globalBody154_192 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d7"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody154_193 : Prog (BitVec 64) :=
.seq globalBody154_191 globalBody154_192

def globalBody154_194 : Prog (BitVec 64) :=
.seq globalBody154_193 globalBody154_9

def globalBody154_195 : Prog (BitVec 64) :=
.seq globalBody154_194 globalBody154_11

def globalBody154_196 : Prog (BitVec 64) :=
.seq globalBody154_195 globalBody154_13

def globalBody154_197 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "b7"])

def globalBody154_198 : Prog (BitVec 64) :=
.seq globalBody154_196 globalBody154_197

def globalBody154_199 : Prog (BitVec 64) :=
.seq globalBody154_198 globalBody154_1

def globalBody154_200 : Prog (BitVec 64) :=
.seq globalBody154_199 globalBody154_3

def globalBody154_201 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "b6"])

def globalBody154_202 : Prog (BitVec 64) :=
.seq globalBody154_200 globalBody154_201

def globalBody154_203 : Prog (BitVec 64) :=
.seq globalBody154_202 globalBody154_1

def globalBody154_204 : Prog (BitVec 64) :=
.seq globalBody154_203 globalBody154_3

def globalBody154_205 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "b5"])

def globalBody154_206 : Prog (BitVec 64) :=
.seq globalBody154_204 globalBody154_205

def globalBody154_207 : Prog (BitVec 64) :=
.seq globalBody154_206 globalBody154_1

def globalBody154_208 : Prog (BitVec 64) :=
.seq globalBody154_207 globalBody154_3

def globalBody154_209 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "b4"])

def globalBody154_210 : Prog (BitVec 64) :=
.seq globalBody154_208 globalBody154_209

def globalBody154_211 : Prog (BitVec 64) :=
.seq globalBody154_210 globalBody154_1

def globalBody154_212 : Prog (BitVec 64) :=
.seq globalBody154_211 globalBody154_3

def globalBody154_213 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "b3"])

def globalBody154_214 : Prog (BitVec 64) :=
.seq globalBody154_212 globalBody154_213

def globalBody154_215 : Prog (BitVec 64) :=
.seq globalBody154_214 globalBody154_1

def globalBody154_216 : Prog (BitVec 64) :=
.seq globalBody154_215 globalBody154_3

def globalBody154_217 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "b2"])

def globalBody154_218 : Prog (BitVec 64) :=
.seq globalBody154_216 globalBody154_217

def globalBody154_219 : Prog (BitVec 64) :=
.seq globalBody154_218 globalBody154_1

def globalBody154_220 : Prog (BitVec 64) :=
.seq globalBody154_219 globalBody154_3

def globalBody154_221 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "b1"])

def globalBody154_222 : Prog (BitVec 64) :=
.seq globalBody154_220 globalBody154_221

def globalBody154_223 : Prog (BitVec 64) :=
.seq globalBody154_222 globalBody154_1

def globalBody154_224 : Prog (BitVec 64) :=
.seq globalBody154_223 globalBody154_3

def globalBody154_225 : Prog (BitVec 64) :=
.seq globalBody154_224 globalBody154_5

def globalBody154_226 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d8"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody154_227 : Prog (BitVec 64) :=
.seq globalBody154_225 globalBody154_226

def globalBody154_228 : Prog (BitVec 64) :=
.seq globalBody154_227 globalBody154_9

def globalBody154_229 : Prog (BitVec 64) :=
.seq globalBody154_228 globalBody154_11

def globalBody154_230 : Prog (BitVec 64) :=
.seq globalBody154_229 globalBody154_13

def globalBody154_231 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "b7"])

def globalBody154_232 : Prog (BitVec 64) :=
.seq globalBody154_230 globalBody154_231

def globalBody154_233 : Prog (BitVec 64) :=
.seq globalBody154_232 globalBody154_1

def globalBody154_234 : Prog (BitVec 64) :=
.seq globalBody154_233 globalBody154_3

def globalBody154_235 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "b6"])

def globalBody154_236 : Prog (BitVec 64) :=
.seq globalBody154_234 globalBody154_235

def globalBody154_237 : Prog (BitVec 64) :=
.seq globalBody154_236 globalBody154_1

def globalBody154_238 : Prog (BitVec 64) :=
.seq globalBody154_237 globalBody154_3

def globalBody154_239 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "b5"])

def globalBody154_240 : Prog (BitVec 64) :=
.seq globalBody154_238 globalBody154_239

def globalBody154_241 : Prog (BitVec 64) :=
.seq globalBody154_240 globalBody154_1

def globalBody154_242 : Prog (BitVec 64) :=
.seq globalBody154_241 globalBody154_3

def globalBody154_243 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "b4"])

def globalBody154_244 : Prog (BitVec 64) :=
.seq globalBody154_242 globalBody154_243

def globalBody154_245 : Prog (BitVec 64) :=
.seq globalBody154_244 globalBody154_1

def globalBody154_246 : Prog (BitVec 64) :=
.seq globalBody154_245 globalBody154_3

def globalBody154_247 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "b3"])

def globalBody154_248 : Prog (BitVec 64) :=
.seq globalBody154_246 globalBody154_247

def globalBody154_249 : Prog (BitVec 64) :=
.seq globalBody154_248 globalBody154_1

def globalBody154_250 : Prog (BitVec 64) :=
.seq globalBody154_249 globalBody154_3

def globalBody154_251 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "b2"])

def globalBody154_252 : Prog (BitVec 64) :=
.seq globalBody154_250 globalBody154_251

def globalBody154_253 : Prog (BitVec 64) :=
.seq globalBody154_252 globalBody154_1

def globalBody154_254 : Prog (BitVec 64) :=
.seq globalBody154_253 globalBody154_3

def globalBody154_255 : Prog (BitVec 64) :=
.seq globalBody154_254 globalBody154_5

def globalBody154_256 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d9"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody154_257 : Prog (BitVec 64) :=
.seq globalBody154_255 globalBody154_256

def globalBody154_258 : Prog (BitVec 64) :=
.seq globalBody154_257 globalBody154_9

def globalBody154_259 : Prog (BitVec 64) :=
.seq globalBody154_258 globalBody154_11

def globalBody154_260 : Prog (BitVec 64) :=
.seq globalBody154_259 globalBody154_13

def globalBody154_261 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "b7"])

def globalBody154_262 : Prog (BitVec 64) :=
.seq globalBody154_260 globalBody154_261

def globalBody154_263 : Prog (BitVec 64) :=
.seq globalBody154_262 globalBody154_1

def globalBody154_264 : Prog (BitVec 64) :=
.seq globalBody154_263 globalBody154_3

def globalBody154_265 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "b6"])

def globalBody154_266 : Prog (BitVec 64) :=
.seq globalBody154_264 globalBody154_265

def globalBody154_267 : Prog (BitVec 64) :=
.seq globalBody154_266 globalBody154_1

def globalBody154_268 : Prog (BitVec 64) :=
.seq globalBody154_267 globalBody154_3

def globalBody154_269 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "b5"])

def globalBody154_270 : Prog (BitVec 64) :=
.seq globalBody154_268 globalBody154_269

def globalBody154_271 : Prog (BitVec 64) :=
.seq globalBody154_270 globalBody154_1

def globalBody154_272 : Prog (BitVec 64) :=
.seq globalBody154_271 globalBody154_3

def globalBody154_273 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "b4"])

def globalBody154_274 : Prog (BitVec 64) :=
.seq globalBody154_272 globalBody154_273

def globalBody154_275 : Prog (BitVec 64) :=
.seq globalBody154_274 globalBody154_1

def globalBody154_276 : Prog (BitVec 64) :=
.seq globalBody154_275 globalBody154_3

def globalBody154_277 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "b3"])

def globalBody154_278 : Prog (BitVec 64) :=
.seq globalBody154_276 globalBody154_277

def globalBody154_279 : Prog (BitVec 64) :=
.seq globalBody154_278 globalBody154_1

def globalBody154_280 : Prog (BitVec 64) :=
.seq globalBody154_279 globalBody154_3

def globalBody154_281 : Prog (BitVec 64) :=
.seq globalBody154_280 globalBody154_5

def globalBody154_282 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d10"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody154_283 : Prog (BitVec 64) :=
.seq globalBody154_281 globalBody154_282

def globalBody154_284 : Prog (BitVec 64) :=
.seq globalBody154_283 globalBody154_9

def globalBody154_285 : Prog (BitVec 64) :=
.seq globalBody154_284 globalBody154_11

def globalBody154_286 : Prog (BitVec 64) :=
.seq globalBody154_285 globalBody154_13

def globalBody154_287 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "b7"])

def globalBody154_288 : Prog (BitVec 64) :=
.seq globalBody154_286 globalBody154_287

def globalBody154_289 : Prog (BitVec 64) :=
.seq globalBody154_288 globalBody154_1

def globalBody154_290 : Prog (BitVec 64) :=
.seq globalBody154_289 globalBody154_3

def globalBody154_291 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "b6"])

def globalBody154_292 : Prog (BitVec 64) :=
.seq globalBody154_290 globalBody154_291

def globalBody154_293 : Prog (BitVec 64) :=
.seq globalBody154_292 globalBody154_1

def globalBody154_294 : Prog (BitVec 64) :=
.seq globalBody154_293 globalBody154_3

def globalBody154_295 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "b5"])

def globalBody154_296 : Prog (BitVec 64) :=
.seq globalBody154_294 globalBody154_295

def globalBody154_297 : Prog (BitVec 64) :=
.seq globalBody154_296 globalBody154_1

def globalBody154_298 : Prog (BitVec 64) :=
.seq globalBody154_297 globalBody154_3

def globalBody154_299 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "b4"])

def globalBody154_300 : Prog (BitVec 64) :=
.seq globalBody154_298 globalBody154_299

def globalBody154_301 : Prog (BitVec 64) :=
.seq globalBody154_300 globalBody154_1

def globalBody154_302 : Prog (BitVec 64) :=
.seq globalBody154_301 globalBody154_3

def globalBody154_303 : Prog (BitVec 64) :=
.seq globalBody154_302 globalBody154_5

def globalBody154_304 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d11"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody154_305 : Prog (BitVec 64) :=
.seq globalBody154_303 globalBody154_304

def globalBody154_306 : Prog (BitVec 64) :=
.seq globalBody154_305 globalBody154_9

def globalBody154_307 : Prog (BitVec 64) :=
.seq globalBody154_306 globalBody154_11

def globalBody154_308 : Prog (BitVec 64) :=
.seq globalBody154_307 globalBody154_13

def globalBody154_309 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "b7"])

def globalBody154_310 : Prog (BitVec 64) :=
.seq globalBody154_308 globalBody154_309

def globalBody154_311 : Prog (BitVec 64) :=
.seq globalBody154_310 globalBody154_1

def globalBody154_312 : Prog (BitVec 64) :=
.seq globalBody154_311 globalBody154_3

def globalBody154_313 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "b6"])

def globalBody154_314 : Prog (BitVec 64) :=
.seq globalBody154_312 globalBody154_313

def globalBody154_315 : Prog (BitVec 64) :=
.seq globalBody154_314 globalBody154_1

def globalBody154_316 : Prog (BitVec 64) :=
.seq globalBody154_315 globalBody154_3

def globalBody154_317 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "b5"])

def globalBody154_318 : Prog (BitVec 64) :=
.seq globalBody154_316 globalBody154_317

def globalBody154_319 : Prog (BitVec 64) :=
.seq globalBody154_318 globalBody154_1

def globalBody154_320 : Prog (BitVec 64) :=
.seq globalBody154_319 globalBody154_3

def globalBody154_321 : Prog (BitVec 64) :=
.seq globalBody154_320 globalBody154_5

def globalBody154_322 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d12"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody154_323 : Prog (BitVec 64) :=
.seq globalBody154_321 globalBody154_322

def globalBody154_324 : Prog (BitVec 64) :=
.seq globalBody154_323 globalBody154_9

def globalBody154_325 : Prog (BitVec 64) :=
.seq globalBody154_324 globalBody154_11

def globalBody154_326 : Prog (BitVec 64) :=
.seq globalBody154_325 globalBody154_13

def globalBody154_327 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "b7"])

def globalBody154_328 : Prog (BitVec 64) :=
.seq globalBody154_326 globalBody154_327

def globalBody154_329 : Prog (BitVec 64) :=
.seq globalBody154_328 globalBody154_1

def globalBody154_330 : Prog (BitVec 64) :=
.seq globalBody154_329 globalBody154_3

def globalBody154_331 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "b6"])

def globalBody154_332 : Prog (BitVec 64) :=
.seq globalBody154_330 globalBody154_331

def globalBody154_333 : Prog (BitVec 64) :=
.seq globalBody154_332 globalBody154_1

def globalBody154_334 : Prog (BitVec 64) :=
.seq globalBody154_333 globalBody154_3

def globalBody154_335 : Prog (BitVec 64) :=
.seq globalBody154_334 globalBody154_5

def globalBody154_336 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d13"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody154_337 : Prog (BitVec 64) :=
.seq globalBody154_335 globalBody154_336

def globalBody154_338 : Prog (BitVec 64) :=
.seq globalBody154_337 globalBody154_9

def globalBody154_339 : Prog (BitVec 64) :=
.seq globalBody154_338 globalBody154_11

def globalBody154_340 : Prog (BitVec 64) :=
.seq globalBody154_339 globalBody154_13

def globalBody154_341 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "b7"])

def globalBody154_342 : Prog (BitVec 64) :=
.seq globalBody154_340 globalBody154_341

def globalBody154_343 : Prog (BitVec 64) :=
.seq globalBody154_342 globalBody154_1

def globalBody154_344 : Prog (BitVec 64) :=
.seq globalBody154_343 globalBody154_3

def globalBody154_345 : Prog (BitVec 64) :=
.seq globalBody154_344 globalBody154_5

def globalBody154_346 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d14"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody154_347 : Prog (BitVec 64) :=
.seq globalBody154_345 globalBody154_346

def globalBody154_348 : Prog (BitVec 64) :=
.seq globalBody154_347 globalBody154_9

def globalBody154_349 : Prog (BitVec 64) :=
.seq globalBody154_348 globalBody154_11

def globalBody154_350 : Prog (BitVec 64) :=
.seq globalBody154_349 globalBody154_13

def globalBody154_351 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d15" (Flapjack.Exp.var Flapjack.VarKind.local "c")

def globalBody154_352 : Prog (BitVec 64) :=
.seq globalBody154_350 globalBody154_351

def globalBody154_353 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d0",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 977#64, Flapjack.Exp.var Flapjack.VarKind.local "d8"]])

def globalBody154_354 : Prog (BitVec 64) :=
.seq globalBody154_352 globalBody154_353

def globalBody154_355 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "col") (Flapjack.Exp.const 32#64))

def globalBody154_356 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d1", Flapjack.Exp.var Flapjack.VarKind.local "d8",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 977#64, Flapjack.Exp.var Flapjack.VarKind.local "d9"],
      Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody154_357 : Prog (BitVec 64) :=
.seq globalBody154_355 globalBody154_356

def globalBody154_358 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d2", Flapjack.Exp.var Flapjack.VarKind.local "d9",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 977#64, Flapjack.Exp.var Flapjack.VarKind.local "d10"],
      Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody154_359 : Prog (BitVec 64) :=
.seq globalBody154_355 globalBody154_358

def globalBody154_360 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d3", Flapjack.Exp.var Flapjack.VarKind.local "d10",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 977#64, Flapjack.Exp.var Flapjack.VarKind.local "d11"],
      Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody154_361 : Prog (BitVec 64) :=
.seq globalBody154_355 globalBody154_360

def globalBody154_362 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d4", Flapjack.Exp.var Flapjack.VarKind.local "d11",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 977#64, Flapjack.Exp.var Flapjack.VarKind.local "d12"],
      Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody154_363 : Prog (BitVec 64) :=
.seq globalBody154_355 globalBody154_362

def globalBody154_364 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d5", Flapjack.Exp.var Flapjack.VarKind.local "d12",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 977#64, Flapjack.Exp.var Flapjack.VarKind.local "d13"],
      Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody154_365 : Prog (BitVec 64) :=
.seq globalBody154_355 globalBody154_364

def globalBody154_366 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d6", Flapjack.Exp.var Flapjack.VarKind.local "d13",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 977#64, Flapjack.Exp.var Flapjack.VarKind.local "d14"],
      Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody154_367 : Prog (BitVec 64) :=
.seq globalBody154_355 globalBody154_366

def globalBody154_368 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d7", Flapjack.Exp.var Flapjack.VarKind.local "d14",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 977#64, Flapjack.Exp.var Flapjack.VarKind.local "d15"],
      Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody154_369 : Prog (BitVec 64) :=
.seq globalBody154_355 globalBody154_368

def globalBody154_370 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "u0",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 977#64, Flapjack.Exp.var Flapjack.VarKind.local "uhi"]])

def globalBody154_371 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "u1",
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.var Flapjack.VarKind.local "uhi", Flapjack.Exp.const 4294967295#64],
      Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody154_372 : Prog (BitVec 64) :=
.seq globalBody154_355 globalBody154_371

def globalBody154_373 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "u2",
      Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "uhi") (Flapjack.Exp.const 32#64),
      Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody154_374 : Prog (BitVec 64) :=
.seq globalBody154_355 globalBody154_373

def globalBody154_375 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "u3", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody154_376 : Prog (BitVec 64) :=
.seq globalBody154_355 globalBody154_375

def globalBody154_377 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "u4", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody154_378 : Prog (BitVec 64) :=
.seq globalBody154_355 globalBody154_377

def globalBody154_379 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "u5", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody154_380 : Prog (BitVec 64) :=
.seq globalBody154_355 globalBody154_379

def globalBody154_381 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "u6", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody154_382 : Prog (BitVec 64) :=
.seq globalBody154_355 globalBody154_381

def globalBody154_383 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "u7", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody154_384 : Prog (BitVec 64) :=
.seq globalBody154_355 globalBody154_383

def globalBody154_385 : Prog (BitVec 64) :=
Flapjack.Prog.call none "u256_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "r",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 4294968273#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]]

def globalBody154_386 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody154_387 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "c") (Flapjack.Exp.const 1#64)) globalBody154_385 globalBody154_386

def globalBody154_388 : Prog (BitVec 64) :=
Flapjack.Prog.call none "fp_reduce" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def globalBody154_389 : Prog (BitVec 64) :=
.seq globalBody154_387 globalBody154_388

def globalBody154_390 : Prog (BitVec 64) :=
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
          (Flapjack.Exp.const 32#64)]]) globalBody154_389

def globalBody154_391 : Prog (BitVec 64) :=
.seq globalBody154_355 globalBody154_390

def globalBody154_392 : Prog (BitVec 64) :=
.dec ("v7") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody154_391

def globalBody154_393 : Prog (BitVec 64) :=
.seq globalBody154_384 globalBody154_392

def globalBody154_394 : Prog (BitVec 64) :=
.dec ("v6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody154_393

def globalBody154_395 : Prog (BitVec 64) :=
.seq globalBody154_382 globalBody154_394

def globalBody154_396 : Prog (BitVec 64) :=
.dec ("v5") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody154_395

def globalBody154_397 : Prog (BitVec 64) :=
.seq globalBody154_380 globalBody154_396

def globalBody154_398 : Prog (BitVec 64) :=
.dec ("v4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody154_397

def globalBody154_399 : Prog (BitVec 64) :=
.seq globalBody154_378 globalBody154_398

def globalBody154_400 : Prog (BitVec 64) :=
.dec ("v3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody154_399

def globalBody154_401 : Prog (BitVec 64) :=
.seq globalBody154_376 globalBody154_400

def globalBody154_402 : Prog (BitVec 64) :=
.dec ("v2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody154_401

def globalBody154_403 : Prog (BitVec 64) :=
.seq globalBody154_374 globalBody154_402

def globalBody154_404 : Prog (BitVec 64) :=
.dec ("v1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody154_403

def globalBody154_405 : Prog (BitVec 64) :=
.seq globalBody154_372 globalBody154_404

def globalBody154_406 : Prog (BitVec 64) :=
.dec ("v0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody154_405

def globalBody154_407 : Prog (BitVec 64) :=
.seq globalBody154_370 globalBody154_406

def globalBody154_408 : Prog (BitVec 64) :=
.dec ("uhi") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "d15", Flapjack.Exp.var Flapjack.VarKind.local "c"]) globalBody154_407

def globalBody154_409 : Prog (BitVec 64) :=
.seq globalBody154_355 globalBody154_408

def globalBody154_410 : Prog (BitVec 64) :=
.dec ("u7") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody154_409

def globalBody154_411 : Prog (BitVec 64) :=
.seq globalBody154_369 globalBody154_410

def globalBody154_412 : Prog (BitVec 64) :=
.dec ("u6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody154_411

def globalBody154_413 : Prog (BitVec 64) :=
.seq globalBody154_367 globalBody154_412

def globalBody154_414 : Prog (BitVec 64) :=
.dec ("u5") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody154_413

def globalBody154_415 : Prog (BitVec 64) :=
.seq globalBody154_365 globalBody154_414

def globalBody154_416 : Prog (BitVec 64) :=
.dec ("u4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody154_415

def globalBody154_417 : Prog (BitVec 64) :=
.seq globalBody154_363 globalBody154_416

def globalBody154_418 : Prog (BitVec 64) :=
.dec ("u3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody154_417

def globalBody154_419 : Prog (BitVec 64) :=
.seq globalBody154_361 globalBody154_418

def globalBody154_420 : Prog (BitVec 64) :=
.dec ("u2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody154_419

def globalBody154_421 : Prog (BitVec 64) :=
.seq globalBody154_359 globalBody154_420

def globalBody154_422 : Prog (BitVec 64) :=
.dec ("u1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody154_421

def globalBody154_423 : Prog (BitVec 64) :=
.seq globalBody154_357 globalBody154_422

def globalBody154_424 : Prog (BitVec 64) :=
.dec ("u0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody154_423

def globalBody154_425 : Prog (BitVec 64) :=
.seq globalBody154_354 globalBody154_424

def globalBody154_426 : Prog (BitVec 64) :=
.dec ("d15") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody154_425

def globalBody154_427 : Prog (BitVec 64) :=
.dec ("d14") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody154_426

def globalBody154_428 : Prog (BitVec 64) :=
.dec ("d13") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody154_427

def globalBody154_429 : Prog (BitVec 64) :=
.dec ("d12") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody154_428

def globalBody154_430 : Prog (BitVec 64) :=
.dec ("d11") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody154_429

def globalBody154_431 : Prog (BitVec 64) :=
.dec ("d10") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody154_430

def globalBody154_432 : Prog (BitVec 64) :=
.dec ("d9") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody154_431

def globalBody154_433 : Prog (BitVec 64) :=
.dec ("d8") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody154_432

def globalBody154_434 : Prog (BitVec 64) :=
.dec ("d7") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody154_433

def globalBody154_435 : Prog (BitVec 64) :=
.dec ("d6") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody154_434

def globalBody154_436 : Prog (BitVec 64) :=
.dec ("d5") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody154_435

def globalBody154_437 : Prog (BitVec 64) :=
.dec ("d4") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody154_436

def globalBody154_438 : Prog (BitVec 64) :=
.dec ("d3") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody154_437

def globalBody154_439 : Prog (BitVec 64) :=
.dec ("d2") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody154_438

def globalBody154_440 : Prog (BitVec 64) :=
.dec ("d1") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody154_439

def globalBody154_441 : Prog (BitVec 64) :=
.dec ("d0") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody154_440

def globalBody154_442 : Prog (BitVec 64) :=
.dec ("col") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody154_441

def globalBody154_443 : Prog (BitVec 64) :=
.dec ("c") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody154_442

def globalBody154_444 : Prog (BitVec 64) :=
.dec ("H") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody154_443

def globalBody154_445 : Prog (BitVec 64) :=
.dec ("L") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody154_444

def globalBody154_446 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody154_445

def globalBody154_447 : Prog (BitVec 64) :=
.dec ("b7") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b"))
  (Flapjack.Exp.const 32#64)) globalBody154_446

def globalBody154_448 : Prog (BitVec 64) :=
.dec ("b6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b"), Flapjack.Exp.const 4294967295#64]) globalBody154_447

def globalBody154_449 : Prog (BitVec 64) :=
.dec ("b5") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"))
  (Flapjack.Exp.const 32#64)) globalBody154_448

def globalBody154_450 : Prog (BitVec 64) :=
.dec ("b4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"), Flapjack.Exp.const 4294967295#64]) globalBody154_449

def globalBody154_451 : Prog (BitVec 64) :=
.dec ("b3") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"))
  (Flapjack.Exp.const 32#64)) globalBody154_450

def globalBody154_452 : Prog (BitVec 64) :=
.dec ("b2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"), Flapjack.Exp.const 4294967295#64]) globalBody154_451

def globalBody154_453 : Prog (BitVec 64) :=
.dec ("b1") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b"))
  (Flapjack.Exp.const 32#64)) globalBody154_452

def globalBody154_454 : Prog (BitVec 64) :=
.dec ("b0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b"), Flapjack.Exp.const 4294967295#64]) globalBody154_453

def globalBody154_455 : Prog (BitVec 64) :=
.dec ("a7") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) globalBody154_454

def globalBody154_456 : Prog (BitVec 64) :=
.dec ("a6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) globalBody154_455

def globalBody154_457 : Prog (BitVec 64) :=
.dec ("a5") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) globalBody154_456

def globalBody154_458 : Prog (BitVec 64) :=
.dec ("a4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) globalBody154_457

def globalBody154_459 : Prog (BitVec 64) :=
.dec ("a3") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) globalBody154_458

def globalBody154_460 : Prog (BitVec 64) :=
.dec ("a2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) globalBody154_459

def globalBody154_461 : Prog (BitVec 64) :=
.dec ("a1") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) globalBody154_460

def globalBody154_462 : Prog (BitVec 64) :=
.dec ("a0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) globalBody154_461

def globalData154 : Decl (BitVec 64) :=
.function { name := "fp_mul", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody154_462, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput154 := Pancake.PanLang.declToHOL globalData154
end InitECandidate.Proofs.FrontendStages.Declarations
