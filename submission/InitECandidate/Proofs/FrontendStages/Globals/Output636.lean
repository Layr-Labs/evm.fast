import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data636
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate617
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody636_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "a0"])

def globalBody636_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "L"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "L",
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 4294967295#64]])

def globalBody636_2 : Prog (BitVec 64) :=
.seq globalBody636_0 globalBody636_1

def globalBody636_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "H"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "H",
      Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "p") (Flapjack.Exp.const 32#64)])

def globalBody636_4 : Prog (BitVec 64) :=
.seq globalBody636_2 globalBody636_3

def globalBody636_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "L"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "L", Flapjack.Exp.var Flapjack.VarKind.local "Lc",
      Flapjack.Exp.var Flapjack.VarKind.local "Lc"])

def globalBody636_6 : Prog (BitVec 64) :=
.seq globalBody636_4 globalBody636_5

def globalBody636_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "H"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "H", Flapjack.Exp.var Flapjack.VarKind.local "Hc",
      Flapjack.Exp.var Flapjack.VarKind.local "Hc"])

def globalBody636_8 : Prog (BitVec 64) :=
.seq globalBody636_6 globalBody636_7

def globalBody636_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "Lc" (Flapjack.Exp.const 0#64)

def globalBody636_10 : Prog (BitVec 64) :=
.seq globalBody636_8 globalBody636_9

def globalBody636_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "Hc" (Flapjack.Exp.const 0#64)

def globalBody636_12 : Prog (BitVec 64) :=
.seq globalBody636_10 globalBody636_11

def globalBody636_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "L", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody636_14 : Prog (BitVec 64) :=
.seq globalBody636_12 globalBody636_13

def globalBody636_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d0"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody636_16 : Prog (BitVec 64) :=
.seq globalBody636_14 globalBody636_15

def globalBody636_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "col") (Flapjack.Exp.const 32#64),
      Flapjack.Exp.var Flapjack.VarKind.local "H"])

def globalBody636_18 : Prog (BitVec 64) :=
.seq globalBody636_16 globalBody636_17

def globalBody636_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "L" (Flapjack.Exp.const 0#64)

def globalBody636_20 : Prog (BitVec 64) :=
.seq globalBody636_18 globalBody636_19

def globalBody636_21 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "H" (Flapjack.Exp.const 0#64)

def globalBody636_22 : Prog (BitVec 64) :=
.seq globalBody636_20 globalBody636_21

def globalBody636_23 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "a1"])

def globalBody636_24 : Prog (BitVec 64) :=
.seq globalBody636_22 globalBody636_23

def globalBody636_25 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "Lc"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "Lc",
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 4294967295#64]])

def globalBody636_26 : Prog (BitVec 64) :=
.seq globalBody636_24 globalBody636_25

def globalBody636_27 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "Hc"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "Hc",
      Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "p") (Flapjack.Exp.const 32#64)])

def globalBody636_28 : Prog (BitVec 64) :=
.seq globalBody636_26 globalBody636_27

def globalBody636_29 : Prog (BitVec 64) :=
.seq globalBody636_28 globalBody636_5

def globalBody636_30 : Prog (BitVec 64) :=
.seq globalBody636_29 globalBody636_7

def globalBody636_31 : Prog (BitVec 64) :=
.seq globalBody636_30 globalBody636_9

def globalBody636_32 : Prog (BitVec 64) :=
.seq globalBody636_31 globalBody636_11

def globalBody636_33 : Prog (BitVec 64) :=
.seq globalBody636_32 globalBody636_13

def globalBody636_34 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d1"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody636_35 : Prog (BitVec 64) :=
.seq globalBody636_33 globalBody636_34

def globalBody636_36 : Prog (BitVec 64) :=
.seq globalBody636_35 globalBody636_17

def globalBody636_37 : Prog (BitVec 64) :=
.seq globalBody636_36 globalBody636_19

def globalBody636_38 : Prog (BitVec 64) :=
.seq globalBody636_37 globalBody636_21

def globalBody636_39 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "a2"])

def globalBody636_40 : Prog (BitVec 64) :=
.seq globalBody636_38 globalBody636_39

def globalBody636_41 : Prog (BitVec 64) :=
.seq globalBody636_40 globalBody636_25

def globalBody636_42 : Prog (BitVec 64) :=
.seq globalBody636_41 globalBody636_27

def globalBody636_43 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "a1"])

def globalBody636_44 : Prog (BitVec 64) :=
.seq globalBody636_42 globalBody636_43

def globalBody636_45 : Prog (BitVec 64) :=
.seq globalBody636_44 globalBody636_1

def globalBody636_46 : Prog (BitVec 64) :=
.seq globalBody636_45 globalBody636_3

def globalBody636_47 : Prog (BitVec 64) :=
.seq globalBody636_46 globalBody636_5

def globalBody636_48 : Prog (BitVec 64) :=
.seq globalBody636_47 globalBody636_7

def globalBody636_49 : Prog (BitVec 64) :=
.seq globalBody636_48 globalBody636_9

def globalBody636_50 : Prog (BitVec 64) :=
.seq globalBody636_49 globalBody636_11

def globalBody636_51 : Prog (BitVec 64) :=
.seq globalBody636_50 globalBody636_13

def globalBody636_52 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d2"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody636_53 : Prog (BitVec 64) :=
.seq globalBody636_51 globalBody636_52

def globalBody636_54 : Prog (BitVec 64) :=
.seq globalBody636_53 globalBody636_17

def globalBody636_55 : Prog (BitVec 64) :=
.seq globalBody636_54 globalBody636_19

def globalBody636_56 : Prog (BitVec 64) :=
.seq globalBody636_55 globalBody636_21

def globalBody636_57 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "a3"])

def globalBody636_58 : Prog (BitVec 64) :=
.seq globalBody636_56 globalBody636_57

def globalBody636_59 : Prog (BitVec 64) :=
.seq globalBody636_58 globalBody636_25

def globalBody636_60 : Prog (BitVec 64) :=
.seq globalBody636_59 globalBody636_27

def globalBody636_61 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "a2"])

def globalBody636_62 : Prog (BitVec 64) :=
.seq globalBody636_60 globalBody636_61

def globalBody636_63 : Prog (BitVec 64) :=
.seq globalBody636_62 globalBody636_25

def globalBody636_64 : Prog (BitVec 64) :=
.seq globalBody636_63 globalBody636_27

def globalBody636_65 : Prog (BitVec 64) :=
.seq globalBody636_64 globalBody636_5

def globalBody636_66 : Prog (BitVec 64) :=
.seq globalBody636_65 globalBody636_7

def globalBody636_67 : Prog (BitVec 64) :=
.seq globalBody636_66 globalBody636_9

def globalBody636_68 : Prog (BitVec 64) :=
.seq globalBody636_67 globalBody636_11

def globalBody636_69 : Prog (BitVec 64) :=
.seq globalBody636_68 globalBody636_13

def globalBody636_70 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d3"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody636_71 : Prog (BitVec 64) :=
.seq globalBody636_69 globalBody636_70

def globalBody636_72 : Prog (BitVec 64) :=
.seq globalBody636_71 globalBody636_17

def globalBody636_73 : Prog (BitVec 64) :=
.seq globalBody636_72 globalBody636_19

def globalBody636_74 : Prog (BitVec 64) :=
.seq globalBody636_73 globalBody636_21

def globalBody636_75 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "a4"])

def globalBody636_76 : Prog (BitVec 64) :=
.seq globalBody636_74 globalBody636_75

def globalBody636_77 : Prog (BitVec 64) :=
.seq globalBody636_76 globalBody636_25

def globalBody636_78 : Prog (BitVec 64) :=
.seq globalBody636_77 globalBody636_27

def globalBody636_79 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "a3"])

def globalBody636_80 : Prog (BitVec 64) :=
.seq globalBody636_78 globalBody636_79

def globalBody636_81 : Prog (BitVec 64) :=
.seq globalBody636_80 globalBody636_25

def globalBody636_82 : Prog (BitVec 64) :=
.seq globalBody636_81 globalBody636_27

def globalBody636_83 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "a2"])

def globalBody636_84 : Prog (BitVec 64) :=
.seq globalBody636_82 globalBody636_83

def globalBody636_85 : Prog (BitVec 64) :=
.seq globalBody636_84 globalBody636_1

def globalBody636_86 : Prog (BitVec 64) :=
.seq globalBody636_85 globalBody636_3

def globalBody636_87 : Prog (BitVec 64) :=
.seq globalBody636_86 globalBody636_5

def globalBody636_88 : Prog (BitVec 64) :=
.seq globalBody636_87 globalBody636_7

def globalBody636_89 : Prog (BitVec 64) :=
.seq globalBody636_88 globalBody636_9

def globalBody636_90 : Prog (BitVec 64) :=
.seq globalBody636_89 globalBody636_11

def globalBody636_91 : Prog (BitVec 64) :=
.seq globalBody636_90 globalBody636_13

def globalBody636_92 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d4"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody636_93 : Prog (BitVec 64) :=
.seq globalBody636_91 globalBody636_92

def globalBody636_94 : Prog (BitVec 64) :=
.seq globalBody636_93 globalBody636_17

def globalBody636_95 : Prog (BitVec 64) :=
.seq globalBody636_94 globalBody636_19

def globalBody636_96 : Prog (BitVec 64) :=
.seq globalBody636_95 globalBody636_21

def globalBody636_97 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "a5"])

def globalBody636_98 : Prog (BitVec 64) :=
.seq globalBody636_96 globalBody636_97

def globalBody636_99 : Prog (BitVec 64) :=
.seq globalBody636_98 globalBody636_25

def globalBody636_100 : Prog (BitVec 64) :=
.seq globalBody636_99 globalBody636_27

def globalBody636_101 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "a4"])

def globalBody636_102 : Prog (BitVec 64) :=
.seq globalBody636_100 globalBody636_101

def globalBody636_103 : Prog (BitVec 64) :=
.seq globalBody636_102 globalBody636_25

def globalBody636_104 : Prog (BitVec 64) :=
.seq globalBody636_103 globalBody636_27

def globalBody636_105 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "a3"])

def globalBody636_106 : Prog (BitVec 64) :=
.seq globalBody636_104 globalBody636_105

def globalBody636_107 : Prog (BitVec 64) :=
.seq globalBody636_106 globalBody636_25

def globalBody636_108 : Prog (BitVec 64) :=
.seq globalBody636_107 globalBody636_27

def globalBody636_109 : Prog (BitVec 64) :=
.seq globalBody636_108 globalBody636_5

def globalBody636_110 : Prog (BitVec 64) :=
.seq globalBody636_109 globalBody636_7

def globalBody636_111 : Prog (BitVec 64) :=
.seq globalBody636_110 globalBody636_9

def globalBody636_112 : Prog (BitVec 64) :=
.seq globalBody636_111 globalBody636_11

def globalBody636_113 : Prog (BitVec 64) :=
.seq globalBody636_112 globalBody636_13

def globalBody636_114 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d5"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody636_115 : Prog (BitVec 64) :=
.seq globalBody636_113 globalBody636_114

def globalBody636_116 : Prog (BitVec 64) :=
.seq globalBody636_115 globalBody636_17

def globalBody636_117 : Prog (BitVec 64) :=
.seq globalBody636_116 globalBody636_19

def globalBody636_118 : Prog (BitVec 64) :=
.seq globalBody636_117 globalBody636_21

def globalBody636_119 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "a6"])

def globalBody636_120 : Prog (BitVec 64) :=
.seq globalBody636_118 globalBody636_119

def globalBody636_121 : Prog (BitVec 64) :=
.seq globalBody636_120 globalBody636_25

def globalBody636_122 : Prog (BitVec 64) :=
.seq globalBody636_121 globalBody636_27

def globalBody636_123 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "a5"])

def globalBody636_124 : Prog (BitVec 64) :=
.seq globalBody636_122 globalBody636_123

def globalBody636_125 : Prog (BitVec 64) :=
.seq globalBody636_124 globalBody636_25

def globalBody636_126 : Prog (BitVec 64) :=
.seq globalBody636_125 globalBody636_27

def globalBody636_127 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "a4"])

def globalBody636_128 : Prog (BitVec 64) :=
.seq globalBody636_126 globalBody636_127

def globalBody636_129 : Prog (BitVec 64) :=
.seq globalBody636_128 globalBody636_25

def globalBody636_130 : Prog (BitVec 64) :=
.seq globalBody636_129 globalBody636_27

def globalBody636_131 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "a3"])

def globalBody636_132 : Prog (BitVec 64) :=
.seq globalBody636_130 globalBody636_131

def globalBody636_133 : Prog (BitVec 64) :=
.seq globalBody636_132 globalBody636_1

def globalBody636_134 : Prog (BitVec 64) :=
.seq globalBody636_133 globalBody636_3

def globalBody636_135 : Prog (BitVec 64) :=
.seq globalBody636_134 globalBody636_5

def globalBody636_136 : Prog (BitVec 64) :=
.seq globalBody636_135 globalBody636_7

def globalBody636_137 : Prog (BitVec 64) :=
.seq globalBody636_136 globalBody636_9

def globalBody636_138 : Prog (BitVec 64) :=
.seq globalBody636_137 globalBody636_11

def globalBody636_139 : Prog (BitVec 64) :=
.seq globalBody636_138 globalBody636_13

def globalBody636_140 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d6"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody636_141 : Prog (BitVec 64) :=
.seq globalBody636_139 globalBody636_140

def globalBody636_142 : Prog (BitVec 64) :=
.seq globalBody636_141 globalBody636_17

def globalBody636_143 : Prog (BitVec 64) :=
.seq globalBody636_142 globalBody636_19

def globalBody636_144 : Prog (BitVec 64) :=
.seq globalBody636_143 globalBody636_21

def globalBody636_145 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "a7"])

def globalBody636_146 : Prog (BitVec 64) :=
.seq globalBody636_144 globalBody636_145

def globalBody636_147 : Prog (BitVec 64) :=
.seq globalBody636_146 globalBody636_25

def globalBody636_148 : Prog (BitVec 64) :=
.seq globalBody636_147 globalBody636_27

def globalBody636_149 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "a6"])

def globalBody636_150 : Prog (BitVec 64) :=
.seq globalBody636_148 globalBody636_149

def globalBody636_151 : Prog (BitVec 64) :=
.seq globalBody636_150 globalBody636_25

def globalBody636_152 : Prog (BitVec 64) :=
.seq globalBody636_151 globalBody636_27

def globalBody636_153 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "a5"])

def globalBody636_154 : Prog (BitVec 64) :=
.seq globalBody636_152 globalBody636_153

def globalBody636_155 : Prog (BitVec 64) :=
.seq globalBody636_154 globalBody636_25

def globalBody636_156 : Prog (BitVec 64) :=
.seq globalBody636_155 globalBody636_27

def globalBody636_157 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "a4"])

def globalBody636_158 : Prog (BitVec 64) :=
.seq globalBody636_156 globalBody636_157

def globalBody636_159 : Prog (BitVec 64) :=
.seq globalBody636_158 globalBody636_25

def globalBody636_160 : Prog (BitVec 64) :=
.seq globalBody636_159 globalBody636_27

def globalBody636_161 : Prog (BitVec 64) :=
.seq globalBody636_160 globalBody636_5

def globalBody636_162 : Prog (BitVec 64) :=
.seq globalBody636_161 globalBody636_7

def globalBody636_163 : Prog (BitVec 64) :=
.seq globalBody636_162 globalBody636_9

def globalBody636_164 : Prog (BitVec 64) :=
.seq globalBody636_163 globalBody636_11

def globalBody636_165 : Prog (BitVec 64) :=
.seq globalBody636_164 globalBody636_13

def globalBody636_166 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d7"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody636_167 : Prog (BitVec 64) :=
.seq globalBody636_165 globalBody636_166

def globalBody636_168 : Prog (BitVec 64) :=
.seq globalBody636_167 globalBody636_17

def globalBody636_169 : Prog (BitVec 64) :=
.seq globalBody636_168 globalBody636_19

def globalBody636_170 : Prog (BitVec 64) :=
.seq globalBody636_169 globalBody636_21

def globalBody636_171 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "a7"])

def globalBody636_172 : Prog (BitVec 64) :=
.seq globalBody636_170 globalBody636_171

def globalBody636_173 : Prog (BitVec 64) :=
.seq globalBody636_172 globalBody636_25

def globalBody636_174 : Prog (BitVec 64) :=
.seq globalBody636_173 globalBody636_27

def globalBody636_175 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "a6"])

def globalBody636_176 : Prog (BitVec 64) :=
.seq globalBody636_174 globalBody636_175

def globalBody636_177 : Prog (BitVec 64) :=
.seq globalBody636_176 globalBody636_25

def globalBody636_178 : Prog (BitVec 64) :=
.seq globalBody636_177 globalBody636_27

def globalBody636_179 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "a5"])

def globalBody636_180 : Prog (BitVec 64) :=
.seq globalBody636_178 globalBody636_179

def globalBody636_181 : Prog (BitVec 64) :=
.seq globalBody636_180 globalBody636_25

def globalBody636_182 : Prog (BitVec 64) :=
.seq globalBody636_181 globalBody636_27

def globalBody636_183 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "a4"])

def globalBody636_184 : Prog (BitVec 64) :=
.seq globalBody636_182 globalBody636_183

def globalBody636_185 : Prog (BitVec 64) :=
.seq globalBody636_184 globalBody636_1

def globalBody636_186 : Prog (BitVec 64) :=
.seq globalBody636_185 globalBody636_3

def globalBody636_187 : Prog (BitVec 64) :=
.seq globalBody636_186 globalBody636_5

def globalBody636_188 : Prog (BitVec 64) :=
.seq globalBody636_187 globalBody636_7

def globalBody636_189 : Prog (BitVec 64) :=
.seq globalBody636_188 globalBody636_9

def globalBody636_190 : Prog (BitVec 64) :=
.seq globalBody636_189 globalBody636_11

def globalBody636_191 : Prog (BitVec 64) :=
.seq globalBody636_190 globalBody636_13

def globalBody636_192 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d8"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody636_193 : Prog (BitVec 64) :=
.seq globalBody636_191 globalBody636_192

def globalBody636_194 : Prog (BitVec 64) :=
.seq globalBody636_193 globalBody636_17

def globalBody636_195 : Prog (BitVec 64) :=
.seq globalBody636_194 globalBody636_19

def globalBody636_196 : Prog (BitVec 64) :=
.seq globalBody636_195 globalBody636_21

def globalBody636_197 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "a7"])

def globalBody636_198 : Prog (BitVec 64) :=
.seq globalBody636_196 globalBody636_197

def globalBody636_199 : Prog (BitVec 64) :=
.seq globalBody636_198 globalBody636_25

def globalBody636_200 : Prog (BitVec 64) :=
.seq globalBody636_199 globalBody636_27

def globalBody636_201 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "a6"])

def globalBody636_202 : Prog (BitVec 64) :=
.seq globalBody636_200 globalBody636_201

def globalBody636_203 : Prog (BitVec 64) :=
.seq globalBody636_202 globalBody636_25

def globalBody636_204 : Prog (BitVec 64) :=
.seq globalBody636_203 globalBody636_27

def globalBody636_205 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "a5"])

def globalBody636_206 : Prog (BitVec 64) :=
.seq globalBody636_204 globalBody636_205

def globalBody636_207 : Prog (BitVec 64) :=
.seq globalBody636_206 globalBody636_25

def globalBody636_208 : Prog (BitVec 64) :=
.seq globalBody636_207 globalBody636_27

def globalBody636_209 : Prog (BitVec 64) :=
.seq globalBody636_208 globalBody636_5

def globalBody636_210 : Prog (BitVec 64) :=
.seq globalBody636_209 globalBody636_7

def globalBody636_211 : Prog (BitVec 64) :=
.seq globalBody636_210 globalBody636_9

def globalBody636_212 : Prog (BitVec 64) :=
.seq globalBody636_211 globalBody636_11

def globalBody636_213 : Prog (BitVec 64) :=
.seq globalBody636_212 globalBody636_13

def globalBody636_214 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d9"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody636_215 : Prog (BitVec 64) :=
.seq globalBody636_213 globalBody636_214

def globalBody636_216 : Prog (BitVec 64) :=
.seq globalBody636_215 globalBody636_17

def globalBody636_217 : Prog (BitVec 64) :=
.seq globalBody636_216 globalBody636_19

def globalBody636_218 : Prog (BitVec 64) :=
.seq globalBody636_217 globalBody636_21

def globalBody636_219 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "a7"])

def globalBody636_220 : Prog (BitVec 64) :=
.seq globalBody636_218 globalBody636_219

def globalBody636_221 : Prog (BitVec 64) :=
.seq globalBody636_220 globalBody636_25

def globalBody636_222 : Prog (BitVec 64) :=
.seq globalBody636_221 globalBody636_27

def globalBody636_223 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "a6"])

def globalBody636_224 : Prog (BitVec 64) :=
.seq globalBody636_222 globalBody636_223

def globalBody636_225 : Prog (BitVec 64) :=
.seq globalBody636_224 globalBody636_25

def globalBody636_226 : Prog (BitVec 64) :=
.seq globalBody636_225 globalBody636_27

def globalBody636_227 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "a5"])

def globalBody636_228 : Prog (BitVec 64) :=
.seq globalBody636_226 globalBody636_227

def globalBody636_229 : Prog (BitVec 64) :=
.seq globalBody636_228 globalBody636_1

def globalBody636_230 : Prog (BitVec 64) :=
.seq globalBody636_229 globalBody636_3

def globalBody636_231 : Prog (BitVec 64) :=
.seq globalBody636_230 globalBody636_5

def globalBody636_232 : Prog (BitVec 64) :=
.seq globalBody636_231 globalBody636_7

def globalBody636_233 : Prog (BitVec 64) :=
.seq globalBody636_232 globalBody636_9

def globalBody636_234 : Prog (BitVec 64) :=
.seq globalBody636_233 globalBody636_11

def globalBody636_235 : Prog (BitVec 64) :=
.seq globalBody636_234 globalBody636_13

def globalBody636_236 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d10"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody636_237 : Prog (BitVec 64) :=
.seq globalBody636_235 globalBody636_236

def globalBody636_238 : Prog (BitVec 64) :=
.seq globalBody636_237 globalBody636_17

def globalBody636_239 : Prog (BitVec 64) :=
.seq globalBody636_238 globalBody636_19

def globalBody636_240 : Prog (BitVec 64) :=
.seq globalBody636_239 globalBody636_21

def globalBody636_241 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "a7"])

def globalBody636_242 : Prog (BitVec 64) :=
.seq globalBody636_240 globalBody636_241

def globalBody636_243 : Prog (BitVec 64) :=
.seq globalBody636_242 globalBody636_25

def globalBody636_244 : Prog (BitVec 64) :=
.seq globalBody636_243 globalBody636_27

def globalBody636_245 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "a6"])

def globalBody636_246 : Prog (BitVec 64) :=
.seq globalBody636_244 globalBody636_245

def globalBody636_247 : Prog (BitVec 64) :=
.seq globalBody636_246 globalBody636_25

def globalBody636_248 : Prog (BitVec 64) :=
.seq globalBody636_247 globalBody636_27

def globalBody636_249 : Prog (BitVec 64) :=
.seq globalBody636_248 globalBody636_5

def globalBody636_250 : Prog (BitVec 64) :=
.seq globalBody636_249 globalBody636_7

def globalBody636_251 : Prog (BitVec 64) :=
.seq globalBody636_250 globalBody636_9

def globalBody636_252 : Prog (BitVec 64) :=
.seq globalBody636_251 globalBody636_11

def globalBody636_253 : Prog (BitVec 64) :=
.seq globalBody636_252 globalBody636_13

def globalBody636_254 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d11"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody636_255 : Prog (BitVec 64) :=
.seq globalBody636_253 globalBody636_254

def globalBody636_256 : Prog (BitVec 64) :=
.seq globalBody636_255 globalBody636_17

def globalBody636_257 : Prog (BitVec 64) :=
.seq globalBody636_256 globalBody636_19

def globalBody636_258 : Prog (BitVec 64) :=
.seq globalBody636_257 globalBody636_21

def globalBody636_259 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "a7"])

def globalBody636_260 : Prog (BitVec 64) :=
.seq globalBody636_258 globalBody636_259

def globalBody636_261 : Prog (BitVec 64) :=
.seq globalBody636_260 globalBody636_25

def globalBody636_262 : Prog (BitVec 64) :=
.seq globalBody636_261 globalBody636_27

def globalBody636_263 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "a6"])

def globalBody636_264 : Prog (BitVec 64) :=
.seq globalBody636_262 globalBody636_263

def globalBody636_265 : Prog (BitVec 64) :=
.seq globalBody636_264 globalBody636_1

def globalBody636_266 : Prog (BitVec 64) :=
.seq globalBody636_265 globalBody636_3

def globalBody636_267 : Prog (BitVec 64) :=
.seq globalBody636_266 globalBody636_5

def globalBody636_268 : Prog (BitVec 64) :=
.seq globalBody636_267 globalBody636_7

def globalBody636_269 : Prog (BitVec 64) :=
.seq globalBody636_268 globalBody636_9

def globalBody636_270 : Prog (BitVec 64) :=
.seq globalBody636_269 globalBody636_11

def globalBody636_271 : Prog (BitVec 64) :=
.seq globalBody636_270 globalBody636_13

def globalBody636_272 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d12"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody636_273 : Prog (BitVec 64) :=
.seq globalBody636_271 globalBody636_272

def globalBody636_274 : Prog (BitVec 64) :=
.seq globalBody636_273 globalBody636_17

def globalBody636_275 : Prog (BitVec 64) :=
.seq globalBody636_274 globalBody636_19

def globalBody636_276 : Prog (BitVec 64) :=
.seq globalBody636_275 globalBody636_21

def globalBody636_277 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "a7"])

def globalBody636_278 : Prog (BitVec 64) :=
.seq globalBody636_276 globalBody636_277

def globalBody636_279 : Prog (BitVec 64) :=
.seq globalBody636_278 globalBody636_25

def globalBody636_280 : Prog (BitVec 64) :=
.seq globalBody636_279 globalBody636_27

def globalBody636_281 : Prog (BitVec 64) :=
.seq globalBody636_280 globalBody636_5

def globalBody636_282 : Prog (BitVec 64) :=
.seq globalBody636_281 globalBody636_7

def globalBody636_283 : Prog (BitVec 64) :=
.seq globalBody636_282 globalBody636_9

def globalBody636_284 : Prog (BitVec 64) :=
.seq globalBody636_283 globalBody636_11

def globalBody636_285 : Prog (BitVec 64) :=
.seq globalBody636_284 globalBody636_13

def globalBody636_286 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d13"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody636_287 : Prog (BitVec 64) :=
.seq globalBody636_285 globalBody636_286

def globalBody636_288 : Prog (BitVec 64) :=
.seq globalBody636_287 globalBody636_17

def globalBody636_289 : Prog (BitVec 64) :=
.seq globalBody636_288 globalBody636_19

def globalBody636_290 : Prog (BitVec 64) :=
.seq globalBody636_289 globalBody636_21

def globalBody636_291 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "a7"])

def globalBody636_292 : Prog (BitVec 64) :=
.seq globalBody636_290 globalBody636_291

def globalBody636_293 : Prog (BitVec 64) :=
.seq globalBody636_292 globalBody636_1

def globalBody636_294 : Prog (BitVec 64) :=
.seq globalBody636_293 globalBody636_3

def globalBody636_295 : Prog (BitVec 64) :=
.seq globalBody636_294 globalBody636_5

def globalBody636_296 : Prog (BitVec 64) :=
.seq globalBody636_295 globalBody636_7

def globalBody636_297 : Prog (BitVec 64) :=
.seq globalBody636_296 globalBody636_9

def globalBody636_298 : Prog (BitVec 64) :=
.seq globalBody636_297 globalBody636_11

def globalBody636_299 : Prog (BitVec 64) :=
.seq globalBody636_298 globalBody636_13

def globalBody636_300 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d14"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody636_301 : Prog (BitVec 64) :=
.seq globalBody636_299 globalBody636_300

def globalBody636_302 : Prog (BitVec 64) :=
.seq globalBody636_301 globalBody636_17

def globalBody636_303 : Prog (BitVec 64) :=
.seq globalBody636_302 globalBody636_19

def globalBody636_304 : Prog (BitVec 64) :=
.seq globalBody636_303 globalBody636_21

def globalBody636_305 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d15" (Flapjack.Exp.var Flapjack.VarKind.local "c")

def globalBody636_306 : Prog (BitVec 64) :=
.seq globalBody636_304 globalBody636_305

def globalBody636_307 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.shift Flapjack.Shift.asr (Flapjack.Exp.var Flapjack.VarKind.local "t0") (Flapjack.Exp.const 32#64))

def globalBody636_308 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody636_309 : Prog (BitVec 64) :=
.seq globalBody636_307 globalBody636_308

def globalBody636_310 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.shift Flapjack.Shift.asr (Flapjack.Exp.var Flapjack.VarKind.local "col") (Flapjack.Exp.const 32#64))

def globalBody636_311 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody636_312 : Prog (BitVec 64) :=
.seq globalBody636_310 globalBody636_311

def globalBody636_313 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t3", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody636_314 : Prog (BitVec 64) :=
.seq globalBody636_310 globalBody636_313

def globalBody636_315 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t4", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody636_316 : Prog (BitVec 64) :=
.seq globalBody636_310 globalBody636_315

def globalBody636_317 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t5", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody636_318 : Prog (BitVec 64) :=
.seq globalBody636_310 globalBody636_317

def globalBody636_319 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t6", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody636_320 : Prog (BitVec 64) :=
.seq globalBody636_310 globalBody636_319

def globalBody636_321 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t7", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody636_322 : Prog (BitVec 64) :=
.seq globalBody636_310 globalBody636_321

def globalBody636_323 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "r"
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "sa"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "sa"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "sa"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "sa")])

def globalBody636_324 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "sa")])

def globalBody636_325 : Prog (BitVec 64) :=
.seq globalBody636_323 globalBody636_324

def globalBody636_326 : Prog (BitVec 64) :=
.decCall ("sa") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_add_carry") ([Flapjack.Exp.var Flapjack.VarKind.local "r",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 4294967295#64, Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 18446744069414584321#64]]) globalBody636_325

def globalBody636_327 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "c") (Flapjack.Exp.const 0#64)) globalBody636_326

def globalBody636_328 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "r"), none)) "u256_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "r",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 4294967295#64, Flapjack.Exp.const 0#64,
        Flapjack.Exp.const 18446744069414584321#64]]

def globalBody636_329 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "ltp"])

def globalBody636_330 : Prog (BitVec 64) :=
.seq globalBody636_328 globalBody636_329

def globalBody636_331 : Prog (BitVec 64) :=
.decCall ("ltp") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "r",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 4294967295#64, Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 18446744069414584321#64]]) globalBody636_330

def globalBody636_332 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "c")) globalBody636_331

def globalBody636_333 : Prog (BitVec 64) :=
.seq globalBody636_327 globalBody636_332

def globalBody636_334 : Prog (BitVec 64) :=
Flapjack.Prog.call none "p256_fp_reduce" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def globalBody636_335 : Prog (BitVec 64) :=
.seq globalBody636_333 globalBody636_334

def globalBody636_336 : Prog (BitVec 64) :=
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
          (Flapjack.Exp.const 32#64)]]) globalBody636_335

def globalBody636_337 : Prog (BitVec 64) :=
.seq globalBody636_310 globalBody636_336

def globalBody636_338 : Prog (BitVec 64) :=
.dec ("v7") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody636_337

def globalBody636_339 : Prog (BitVec 64) :=
.seq globalBody636_322 globalBody636_338

def globalBody636_340 : Prog (BitVec 64) :=
.dec ("v6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody636_339

def globalBody636_341 : Prog (BitVec 64) :=
.seq globalBody636_320 globalBody636_340

def globalBody636_342 : Prog (BitVec 64) :=
.dec ("v5") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody636_341

def globalBody636_343 : Prog (BitVec 64) :=
.seq globalBody636_318 globalBody636_342

def globalBody636_344 : Prog (BitVec 64) :=
.dec ("v4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody636_343

def globalBody636_345 : Prog (BitVec 64) :=
.seq globalBody636_316 globalBody636_344

def globalBody636_346 : Prog (BitVec 64) :=
.dec ("v3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody636_345

def globalBody636_347 : Prog (BitVec 64) :=
.seq globalBody636_314 globalBody636_346

def globalBody636_348 : Prog (BitVec 64) :=
.dec ("v2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody636_347

def globalBody636_349 : Prog (BitVec 64) :=
.seq globalBody636_312 globalBody636_348

def globalBody636_350 : Prog (BitVec 64) :=
.dec ("v1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody636_349

def globalBody636_351 : Prog (BitVec 64) :=
.seq globalBody636_309 globalBody636_350

def globalBody636_352 : Prog (BitVec 64) :=
.dec ("v0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "t0", Flapjack.Exp.const 4294967295#64]) globalBody636_351

def globalBody636_353 : Prog (BitVec 64) :=
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
    Flapjack.Exp.var Flapjack.VarKind.local "d13"]) globalBody636_352

def globalBody636_354 : Prog (BitVec 64) :=
.dec ("t6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "d6", Flapjack.Exp.var Flapjack.VarKind.local "d14",
            Flapjack.Exp.var Flapjack.VarKind.local "d14", Flapjack.Exp.var Flapjack.VarKind.local "d15",
            Flapjack.Exp.var Flapjack.VarKind.local "d15", Flapjack.Exp.var Flapjack.VarKind.local "d14",
            Flapjack.Exp.var Flapjack.VarKind.local "d13"],
        Flapjack.Exp.var Flapjack.VarKind.local "d8"],
    Flapjack.Exp.var Flapjack.VarKind.local "d9"]) globalBody636_353

def globalBody636_355 : Prog (BitVec 64) :=
.dec ("t5") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "d5", Flapjack.Exp.var Flapjack.VarKind.local "d13",
            Flapjack.Exp.var Flapjack.VarKind.local "d13", Flapjack.Exp.var Flapjack.VarKind.local "d14",
            Flapjack.Exp.var Flapjack.VarKind.local "d14", Flapjack.Exp.var Flapjack.VarKind.local "d15"],
        Flapjack.Exp.var Flapjack.VarKind.local "d10"],
    Flapjack.Exp.var Flapjack.VarKind.local "d11"]) globalBody636_354

def globalBody636_356 : Prog (BitVec 64) :=
.dec ("t4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.add
          [Flapjack.Exp.var Flapjack.VarKind.local "d4", Flapjack.Exp.var Flapjack.VarKind.local "d12",
            Flapjack.Exp.var Flapjack.VarKind.local "d12", Flapjack.Exp.var Flapjack.VarKind.local "d13",
            Flapjack.Exp.var Flapjack.VarKind.local "d13", Flapjack.Exp.var Flapjack.VarKind.local "d14"],
        Flapjack.Exp.var Flapjack.VarKind.local "d9"],
    Flapjack.Exp.var Flapjack.VarKind.local "d10"]) globalBody636_355

def globalBody636_357 : Prog (BitVec 64) :=
.dec ("t3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "d3", Flapjack.Exp.var Flapjack.VarKind.local "d11",
                Flapjack.Exp.var Flapjack.VarKind.local "d11", Flapjack.Exp.var Flapjack.VarKind.local "d12",
                Flapjack.Exp.var Flapjack.VarKind.local "d12", Flapjack.Exp.var Flapjack.VarKind.local "d13"],
            Flapjack.Exp.var Flapjack.VarKind.local "d15"],
        Flapjack.Exp.var Flapjack.VarKind.local "d8"],
    Flapjack.Exp.var Flapjack.VarKind.local "d9"]) globalBody636_356

def globalBody636_358 : Prog (BitVec 64) :=
.dec ("t2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "d2", Flapjack.Exp.var Flapjack.VarKind.local "d10",
                Flapjack.Exp.var Flapjack.VarKind.local "d11"],
            Flapjack.Exp.var Flapjack.VarKind.local "d13"],
        Flapjack.Exp.var Flapjack.VarKind.local "d14"],
    Flapjack.Exp.var Flapjack.VarKind.local "d15"]) globalBody636_357

def globalBody636_359 : Prog (BitVec 64) :=
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
    Flapjack.Exp.var Flapjack.VarKind.local "d15"]) globalBody636_358

def globalBody636_360 : Prog (BitVec 64) :=
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
    Flapjack.Exp.var Flapjack.VarKind.local "d14"]) globalBody636_359

def globalBody636_361 : Prog (BitVec 64) :=
.seq globalBody636_306 globalBody636_360

def globalBody636_362 : Prog (BitVec 64) :=
.dec ("d15") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody636_361

def globalBody636_363 : Prog (BitVec 64) :=
.dec ("d14") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody636_362

def globalBody636_364 : Prog (BitVec 64) :=
.dec ("d13") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody636_363

def globalBody636_365 : Prog (BitVec 64) :=
.dec ("d12") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody636_364

def globalBody636_366 : Prog (BitVec 64) :=
.dec ("d11") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody636_365

def globalBody636_367 : Prog (BitVec 64) :=
.dec ("d10") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody636_366

def globalBody636_368 : Prog (BitVec 64) :=
.dec ("d9") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody636_367

def globalBody636_369 : Prog (BitVec 64) :=
.dec ("d8") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody636_368

def globalBody636_370 : Prog (BitVec 64) :=
.dec ("d7") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody636_369

def globalBody636_371 : Prog (BitVec 64) :=
.dec ("d6") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody636_370

def globalBody636_372 : Prog (BitVec 64) :=
.dec ("d5") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody636_371

def globalBody636_373 : Prog (BitVec 64) :=
.dec ("d4") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody636_372

def globalBody636_374 : Prog (BitVec 64) :=
.dec ("d3") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody636_373

def globalBody636_375 : Prog (BitVec 64) :=
.dec ("d2") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody636_374

def globalBody636_376 : Prog (BitVec 64) :=
.dec ("d1") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody636_375

def globalBody636_377 : Prog (BitVec 64) :=
.dec ("d0") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody636_376

def globalBody636_378 : Prog (BitVec 64) :=
.dec ("col") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody636_377

def globalBody636_379 : Prog (BitVec 64) :=
.dec ("c") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody636_378

def globalBody636_380 : Prog (BitVec 64) :=
.dec ("Hc") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody636_379

def globalBody636_381 : Prog (BitVec 64) :=
.dec ("Lc") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody636_380

def globalBody636_382 : Prog (BitVec 64) :=
.dec ("H") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody636_381

def globalBody636_383 : Prog (BitVec 64) :=
.dec ("L") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody636_382

def globalBody636_384 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody636_383

def globalBody636_385 : Prog (BitVec 64) :=
.dec ("a7") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) globalBody636_384

def globalBody636_386 : Prog (BitVec 64) :=
.dec ("a6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) globalBody636_385

def globalBody636_387 : Prog (BitVec 64) :=
.dec ("a5") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) globalBody636_386

def globalBody636_388 : Prog (BitVec 64) :=
.dec ("a4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) globalBody636_387

def globalBody636_389 : Prog (BitVec 64) :=
.dec ("a3") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) globalBody636_388

def globalBody636_390 : Prog (BitVec 64) :=
.dec ("a2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) globalBody636_389

def globalBody636_391 : Prog (BitVec 64) :=
.dec ("a1") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) globalBody636_390

def globalBody636_392 : Prog (BitVec 64) :=
.dec ("a0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) globalBody636_391

def globalData636 : Decl (BitVec 64) :=
.function { name := "p256_fp_sqr", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody636_392, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput636 := Pancake.PanLang.declToHOL globalData636
end InitECandidate.Proofs.FrontendStages.Declarations
