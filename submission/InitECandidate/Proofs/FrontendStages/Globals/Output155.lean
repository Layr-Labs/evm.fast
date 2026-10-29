import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data155
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate138
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody155_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "a0"])

def globalBody155_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "L"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "L",
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 4294967295#64]])

def globalBody155_2 : Prog (BitVec 64) :=
.seq globalBody155_0 globalBody155_1

def globalBody155_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "H"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "H",
      Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "p") (Flapjack.Exp.const 32#64)])

def globalBody155_4 : Prog (BitVec 64) :=
.seq globalBody155_2 globalBody155_3

def globalBody155_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "L"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "L", Flapjack.Exp.var Flapjack.VarKind.local "Lc",
      Flapjack.Exp.var Flapjack.VarKind.local "Lc"])

def globalBody155_6 : Prog (BitVec 64) :=
.seq globalBody155_4 globalBody155_5

def globalBody155_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "H"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "H", Flapjack.Exp.var Flapjack.VarKind.local "Hc",
      Flapjack.Exp.var Flapjack.VarKind.local "Hc"])

def globalBody155_8 : Prog (BitVec 64) :=
.seq globalBody155_6 globalBody155_7

def globalBody155_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "Lc" (Flapjack.Exp.const 0#64)

def globalBody155_10 : Prog (BitVec 64) :=
.seq globalBody155_8 globalBody155_9

def globalBody155_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "Hc" (Flapjack.Exp.const 0#64)

def globalBody155_12 : Prog (BitVec 64) :=
.seq globalBody155_10 globalBody155_11

def globalBody155_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "L", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody155_14 : Prog (BitVec 64) :=
.seq globalBody155_12 globalBody155_13

def globalBody155_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d0"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody155_16 : Prog (BitVec 64) :=
.seq globalBody155_14 globalBody155_15

def globalBody155_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "col") (Flapjack.Exp.const 32#64),
      Flapjack.Exp.var Flapjack.VarKind.local "H"])

def globalBody155_18 : Prog (BitVec 64) :=
.seq globalBody155_16 globalBody155_17

def globalBody155_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "L" (Flapjack.Exp.const 0#64)

def globalBody155_20 : Prog (BitVec 64) :=
.seq globalBody155_18 globalBody155_19

def globalBody155_21 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "H" (Flapjack.Exp.const 0#64)

def globalBody155_22 : Prog (BitVec 64) :=
.seq globalBody155_20 globalBody155_21

def globalBody155_23 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "a1"])

def globalBody155_24 : Prog (BitVec 64) :=
.seq globalBody155_22 globalBody155_23

def globalBody155_25 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "Lc"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "Lc",
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 4294967295#64]])

def globalBody155_26 : Prog (BitVec 64) :=
.seq globalBody155_24 globalBody155_25

def globalBody155_27 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "Hc"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "Hc",
      Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "p") (Flapjack.Exp.const 32#64)])

def globalBody155_28 : Prog (BitVec 64) :=
.seq globalBody155_26 globalBody155_27

def globalBody155_29 : Prog (BitVec 64) :=
.seq globalBody155_28 globalBody155_5

def globalBody155_30 : Prog (BitVec 64) :=
.seq globalBody155_29 globalBody155_7

def globalBody155_31 : Prog (BitVec 64) :=
.seq globalBody155_30 globalBody155_9

def globalBody155_32 : Prog (BitVec 64) :=
.seq globalBody155_31 globalBody155_11

def globalBody155_33 : Prog (BitVec 64) :=
.seq globalBody155_32 globalBody155_13

def globalBody155_34 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d1"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody155_35 : Prog (BitVec 64) :=
.seq globalBody155_33 globalBody155_34

def globalBody155_36 : Prog (BitVec 64) :=
.seq globalBody155_35 globalBody155_17

def globalBody155_37 : Prog (BitVec 64) :=
.seq globalBody155_36 globalBody155_19

def globalBody155_38 : Prog (BitVec 64) :=
.seq globalBody155_37 globalBody155_21

def globalBody155_39 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "a2"])

def globalBody155_40 : Prog (BitVec 64) :=
.seq globalBody155_38 globalBody155_39

def globalBody155_41 : Prog (BitVec 64) :=
.seq globalBody155_40 globalBody155_25

def globalBody155_42 : Prog (BitVec 64) :=
.seq globalBody155_41 globalBody155_27

def globalBody155_43 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "a1"])

def globalBody155_44 : Prog (BitVec 64) :=
.seq globalBody155_42 globalBody155_43

def globalBody155_45 : Prog (BitVec 64) :=
.seq globalBody155_44 globalBody155_1

def globalBody155_46 : Prog (BitVec 64) :=
.seq globalBody155_45 globalBody155_3

def globalBody155_47 : Prog (BitVec 64) :=
.seq globalBody155_46 globalBody155_5

def globalBody155_48 : Prog (BitVec 64) :=
.seq globalBody155_47 globalBody155_7

def globalBody155_49 : Prog (BitVec 64) :=
.seq globalBody155_48 globalBody155_9

def globalBody155_50 : Prog (BitVec 64) :=
.seq globalBody155_49 globalBody155_11

def globalBody155_51 : Prog (BitVec 64) :=
.seq globalBody155_50 globalBody155_13

def globalBody155_52 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d2"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody155_53 : Prog (BitVec 64) :=
.seq globalBody155_51 globalBody155_52

def globalBody155_54 : Prog (BitVec 64) :=
.seq globalBody155_53 globalBody155_17

def globalBody155_55 : Prog (BitVec 64) :=
.seq globalBody155_54 globalBody155_19

def globalBody155_56 : Prog (BitVec 64) :=
.seq globalBody155_55 globalBody155_21

def globalBody155_57 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "a3"])

def globalBody155_58 : Prog (BitVec 64) :=
.seq globalBody155_56 globalBody155_57

def globalBody155_59 : Prog (BitVec 64) :=
.seq globalBody155_58 globalBody155_25

def globalBody155_60 : Prog (BitVec 64) :=
.seq globalBody155_59 globalBody155_27

def globalBody155_61 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "a2"])

def globalBody155_62 : Prog (BitVec 64) :=
.seq globalBody155_60 globalBody155_61

def globalBody155_63 : Prog (BitVec 64) :=
.seq globalBody155_62 globalBody155_25

def globalBody155_64 : Prog (BitVec 64) :=
.seq globalBody155_63 globalBody155_27

def globalBody155_65 : Prog (BitVec 64) :=
.seq globalBody155_64 globalBody155_5

def globalBody155_66 : Prog (BitVec 64) :=
.seq globalBody155_65 globalBody155_7

def globalBody155_67 : Prog (BitVec 64) :=
.seq globalBody155_66 globalBody155_9

def globalBody155_68 : Prog (BitVec 64) :=
.seq globalBody155_67 globalBody155_11

def globalBody155_69 : Prog (BitVec 64) :=
.seq globalBody155_68 globalBody155_13

def globalBody155_70 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d3"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody155_71 : Prog (BitVec 64) :=
.seq globalBody155_69 globalBody155_70

def globalBody155_72 : Prog (BitVec 64) :=
.seq globalBody155_71 globalBody155_17

def globalBody155_73 : Prog (BitVec 64) :=
.seq globalBody155_72 globalBody155_19

def globalBody155_74 : Prog (BitVec 64) :=
.seq globalBody155_73 globalBody155_21

def globalBody155_75 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "a4"])

def globalBody155_76 : Prog (BitVec 64) :=
.seq globalBody155_74 globalBody155_75

def globalBody155_77 : Prog (BitVec 64) :=
.seq globalBody155_76 globalBody155_25

def globalBody155_78 : Prog (BitVec 64) :=
.seq globalBody155_77 globalBody155_27

def globalBody155_79 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "a3"])

def globalBody155_80 : Prog (BitVec 64) :=
.seq globalBody155_78 globalBody155_79

def globalBody155_81 : Prog (BitVec 64) :=
.seq globalBody155_80 globalBody155_25

def globalBody155_82 : Prog (BitVec 64) :=
.seq globalBody155_81 globalBody155_27

def globalBody155_83 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "a2"])

def globalBody155_84 : Prog (BitVec 64) :=
.seq globalBody155_82 globalBody155_83

def globalBody155_85 : Prog (BitVec 64) :=
.seq globalBody155_84 globalBody155_1

def globalBody155_86 : Prog (BitVec 64) :=
.seq globalBody155_85 globalBody155_3

def globalBody155_87 : Prog (BitVec 64) :=
.seq globalBody155_86 globalBody155_5

def globalBody155_88 : Prog (BitVec 64) :=
.seq globalBody155_87 globalBody155_7

def globalBody155_89 : Prog (BitVec 64) :=
.seq globalBody155_88 globalBody155_9

def globalBody155_90 : Prog (BitVec 64) :=
.seq globalBody155_89 globalBody155_11

def globalBody155_91 : Prog (BitVec 64) :=
.seq globalBody155_90 globalBody155_13

def globalBody155_92 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d4"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody155_93 : Prog (BitVec 64) :=
.seq globalBody155_91 globalBody155_92

def globalBody155_94 : Prog (BitVec 64) :=
.seq globalBody155_93 globalBody155_17

def globalBody155_95 : Prog (BitVec 64) :=
.seq globalBody155_94 globalBody155_19

def globalBody155_96 : Prog (BitVec 64) :=
.seq globalBody155_95 globalBody155_21

def globalBody155_97 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "a5"])

def globalBody155_98 : Prog (BitVec 64) :=
.seq globalBody155_96 globalBody155_97

def globalBody155_99 : Prog (BitVec 64) :=
.seq globalBody155_98 globalBody155_25

def globalBody155_100 : Prog (BitVec 64) :=
.seq globalBody155_99 globalBody155_27

def globalBody155_101 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "a4"])

def globalBody155_102 : Prog (BitVec 64) :=
.seq globalBody155_100 globalBody155_101

def globalBody155_103 : Prog (BitVec 64) :=
.seq globalBody155_102 globalBody155_25

def globalBody155_104 : Prog (BitVec 64) :=
.seq globalBody155_103 globalBody155_27

def globalBody155_105 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "a3"])

def globalBody155_106 : Prog (BitVec 64) :=
.seq globalBody155_104 globalBody155_105

def globalBody155_107 : Prog (BitVec 64) :=
.seq globalBody155_106 globalBody155_25

def globalBody155_108 : Prog (BitVec 64) :=
.seq globalBody155_107 globalBody155_27

def globalBody155_109 : Prog (BitVec 64) :=
.seq globalBody155_108 globalBody155_5

def globalBody155_110 : Prog (BitVec 64) :=
.seq globalBody155_109 globalBody155_7

def globalBody155_111 : Prog (BitVec 64) :=
.seq globalBody155_110 globalBody155_9

def globalBody155_112 : Prog (BitVec 64) :=
.seq globalBody155_111 globalBody155_11

def globalBody155_113 : Prog (BitVec 64) :=
.seq globalBody155_112 globalBody155_13

def globalBody155_114 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d5"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody155_115 : Prog (BitVec 64) :=
.seq globalBody155_113 globalBody155_114

def globalBody155_116 : Prog (BitVec 64) :=
.seq globalBody155_115 globalBody155_17

def globalBody155_117 : Prog (BitVec 64) :=
.seq globalBody155_116 globalBody155_19

def globalBody155_118 : Prog (BitVec 64) :=
.seq globalBody155_117 globalBody155_21

def globalBody155_119 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "a6"])

def globalBody155_120 : Prog (BitVec 64) :=
.seq globalBody155_118 globalBody155_119

def globalBody155_121 : Prog (BitVec 64) :=
.seq globalBody155_120 globalBody155_25

def globalBody155_122 : Prog (BitVec 64) :=
.seq globalBody155_121 globalBody155_27

def globalBody155_123 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "a5"])

def globalBody155_124 : Prog (BitVec 64) :=
.seq globalBody155_122 globalBody155_123

def globalBody155_125 : Prog (BitVec 64) :=
.seq globalBody155_124 globalBody155_25

def globalBody155_126 : Prog (BitVec 64) :=
.seq globalBody155_125 globalBody155_27

def globalBody155_127 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "a4"])

def globalBody155_128 : Prog (BitVec 64) :=
.seq globalBody155_126 globalBody155_127

def globalBody155_129 : Prog (BitVec 64) :=
.seq globalBody155_128 globalBody155_25

def globalBody155_130 : Prog (BitVec 64) :=
.seq globalBody155_129 globalBody155_27

def globalBody155_131 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "a3"])

def globalBody155_132 : Prog (BitVec 64) :=
.seq globalBody155_130 globalBody155_131

def globalBody155_133 : Prog (BitVec 64) :=
.seq globalBody155_132 globalBody155_1

def globalBody155_134 : Prog (BitVec 64) :=
.seq globalBody155_133 globalBody155_3

def globalBody155_135 : Prog (BitVec 64) :=
.seq globalBody155_134 globalBody155_5

def globalBody155_136 : Prog (BitVec 64) :=
.seq globalBody155_135 globalBody155_7

def globalBody155_137 : Prog (BitVec 64) :=
.seq globalBody155_136 globalBody155_9

def globalBody155_138 : Prog (BitVec 64) :=
.seq globalBody155_137 globalBody155_11

def globalBody155_139 : Prog (BitVec 64) :=
.seq globalBody155_138 globalBody155_13

def globalBody155_140 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d6"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody155_141 : Prog (BitVec 64) :=
.seq globalBody155_139 globalBody155_140

def globalBody155_142 : Prog (BitVec 64) :=
.seq globalBody155_141 globalBody155_17

def globalBody155_143 : Prog (BitVec 64) :=
.seq globalBody155_142 globalBody155_19

def globalBody155_144 : Prog (BitVec 64) :=
.seq globalBody155_143 globalBody155_21

def globalBody155_145 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a0", Flapjack.Exp.var Flapjack.VarKind.local "a7"])

def globalBody155_146 : Prog (BitVec 64) :=
.seq globalBody155_144 globalBody155_145

def globalBody155_147 : Prog (BitVec 64) :=
.seq globalBody155_146 globalBody155_25

def globalBody155_148 : Prog (BitVec 64) :=
.seq globalBody155_147 globalBody155_27

def globalBody155_149 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "a6"])

def globalBody155_150 : Prog (BitVec 64) :=
.seq globalBody155_148 globalBody155_149

def globalBody155_151 : Prog (BitVec 64) :=
.seq globalBody155_150 globalBody155_25

def globalBody155_152 : Prog (BitVec 64) :=
.seq globalBody155_151 globalBody155_27

def globalBody155_153 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "a5"])

def globalBody155_154 : Prog (BitVec 64) :=
.seq globalBody155_152 globalBody155_153

def globalBody155_155 : Prog (BitVec 64) :=
.seq globalBody155_154 globalBody155_25

def globalBody155_156 : Prog (BitVec 64) :=
.seq globalBody155_155 globalBody155_27

def globalBody155_157 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "a4"])

def globalBody155_158 : Prog (BitVec 64) :=
.seq globalBody155_156 globalBody155_157

def globalBody155_159 : Prog (BitVec 64) :=
.seq globalBody155_158 globalBody155_25

def globalBody155_160 : Prog (BitVec 64) :=
.seq globalBody155_159 globalBody155_27

def globalBody155_161 : Prog (BitVec 64) :=
.seq globalBody155_160 globalBody155_5

def globalBody155_162 : Prog (BitVec 64) :=
.seq globalBody155_161 globalBody155_7

def globalBody155_163 : Prog (BitVec 64) :=
.seq globalBody155_162 globalBody155_9

def globalBody155_164 : Prog (BitVec 64) :=
.seq globalBody155_163 globalBody155_11

def globalBody155_165 : Prog (BitVec 64) :=
.seq globalBody155_164 globalBody155_13

def globalBody155_166 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d7"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody155_167 : Prog (BitVec 64) :=
.seq globalBody155_165 globalBody155_166

def globalBody155_168 : Prog (BitVec 64) :=
.seq globalBody155_167 globalBody155_17

def globalBody155_169 : Prog (BitVec 64) :=
.seq globalBody155_168 globalBody155_19

def globalBody155_170 : Prog (BitVec 64) :=
.seq globalBody155_169 globalBody155_21

def globalBody155_171 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a1", Flapjack.Exp.var Flapjack.VarKind.local "a7"])

def globalBody155_172 : Prog (BitVec 64) :=
.seq globalBody155_170 globalBody155_171

def globalBody155_173 : Prog (BitVec 64) :=
.seq globalBody155_172 globalBody155_25

def globalBody155_174 : Prog (BitVec 64) :=
.seq globalBody155_173 globalBody155_27

def globalBody155_175 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "a6"])

def globalBody155_176 : Prog (BitVec 64) :=
.seq globalBody155_174 globalBody155_175

def globalBody155_177 : Prog (BitVec 64) :=
.seq globalBody155_176 globalBody155_25

def globalBody155_178 : Prog (BitVec 64) :=
.seq globalBody155_177 globalBody155_27

def globalBody155_179 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "a5"])

def globalBody155_180 : Prog (BitVec 64) :=
.seq globalBody155_178 globalBody155_179

def globalBody155_181 : Prog (BitVec 64) :=
.seq globalBody155_180 globalBody155_25

def globalBody155_182 : Prog (BitVec 64) :=
.seq globalBody155_181 globalBody155_27

def globalBody155_183 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "a4"])

def globalBody155_184 : Prog (BitVec 64) :=
.seq globalBody155_182 globalBody155_183

def globalBody155_185 : Prog (BitVec 64) :=
.seq globalBody155_184 globalBody155_1

def globalBody155_186 : Prog (BitVec 64) :=
.seq globalBody155_185 globalBody155_3

def globalBody155_187 : Prog (BitVec 64) :=
.seq globalBody155_186 globalBody155_5

def globalBody155_188 : Prog (BitVec 64) :=
.seq globalBody155_187 globalBody155_7

def globalBody155_189 : Prog (BitVec 64) :=
.seq globalBody155_188 globalBody155_9

def globalBody155_190 : Prog (BitVec 64) :=
.seq globalBody155_189 globalBody155_11

def globalBody155_191 : Prog (BitVec 64) :=
.seq globalBody155_190 globalBody155_13

def globalBody155_192 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d8"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody155_193 : Prog (BitVec 64) :=
.seq globalBody155_191 globalBody155_192

def globalBody155_194 : Prog (BitVec 64) :=
.seq globalBody155_193 globalBody155_17

def globalBody155_195 : Prog (BitVec 64) :=
.seq globalBody155_194 globalBody155_19

def globalBody155_196 : Prog (BitVec 64) :=
.seq globalBody155_195 globalBody155_21

def globalBody155_197 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a2", Flapjack.Exp.var Flapjack.VarKind.local "a7"])

def globalBody155_198 : Prog (BitVec 64) :=
.seq globalBody155_196 globalBody155_197

def globalBody155_199 : Prog (BitVec 64) :=
.seq globalBody155_198 globalBody155_25

def globalBody155_200 : Prog (BitVec 64) :=
.seq globalBody155_199 globalBody155_27

def globalBody155_201 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "a6"])

def globalBody155_202 : Prog (BitVec 64) :=
.seq globalBody155_200 globalBody155_201

def globalBody155_203 : Prog (BitVec 64) :=
.seq globalBody155_202 globalBody155_25

def globalBody155_204 : Prog (BitVec 64) :=
.seq globalBody155_203 globalBody155_27

def globalBody155_205 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "a5"])

def globalBody155_206 : Prog (BitVec 64) :=
.seq globalBody155_204 globalBody155_205

def globalBody155_207 : Prog (BitVec 64) :=
.seq globalBody155_206 globalBody155_25

def globalBody155_208 : Prog (BitVec 64) :=
.seq globalBody155_207 globalBody155_27

def globalBody155_209 : Prog (BitVec 64) :=
.seq globalBody155_208 globalBody155_5

def globalBody155_210 : Prog (BitVec 64) :=
.seq globalBody155_209 globalBody155_7

def globalBody155_211 : Prog (BitVec 64) :=
.seq globalBody155_210 globalBody155_9

def globalBody155_212 : Prog (BitVec 64) :=
.seq globalBody155_211 globalBody155_11

def globalBody155_213 : Prog (BitVec 64) :=
.seq globalBody155_212 globalBody155_13

def globalBody155_214 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d9"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody155_215 : Prog (BitVec 64) :=
.seq globalBody155_213 globalBody155_214

def globalBody155_216 : Prog (BitVec 64) :=
.seq globalBody155_215 globalBody155_17

def globalBody155_217 : Prog (BitVec 64) :=
.seq globalBody155_216 globalBody155_19

def globalBody155_218 : Prog (BitVec 64) :=
.seq globalBody155_217 globalBody155_21

def globalBody155_219 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a3", Flapjack.Exp.var Flapjack.VarKind.local "a7"])

def globalBody155_220 : Prog (BitVec 64) :=
.seq globalBody155_218 globalBody155_219

def globalBody155_221 : Prog (BitVec 64) :=
.seq globalBody155_220 globalBody155_25

def globalBody155_222 : Prog (BitVec 64) :=
.seq globalBody155_221 globalBody155_27

def globalBody155_223 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "a6"])

def globalBody155_224 : Prog (BitVec 64) :=
.seq globalBody155_222 globalBody155_223

def globalBody155_225 : Prog (BitVec 64) :=
.seq globalBody155_224 globalBody155_25

def globalBody155_226 : Prog (BitVec 64) :=
.seq globalBody155_225 globalBody155_27

def globalBody155_227 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "a5"])

def globalBody155_228 : Prog (BitVec 64) :=
.seq globalBody155_226 globalBody155_227

def globalBody155_229 : Prog (BitVec 64) :=
.seq globalBody155_228 globalBody155_1

def globalBody155_230 : Prog (BitVec 64) :=
.seq globalBody155_229 globalBody155_3

def globalBody155_231 : Prog (BitVec 64) :=
.seq globalBody155_230 globalBody155_5

def globalBody155_232 : Prog (BitVec 64) :=
.seq globalBody155_231 globalBody155_7

def globalBody155_233 : Prog (BitVec 64) :=
.seq globalBody155_232 globalBody155_9

def globalBody155_234 : Prog (BitVec 64) :=
.seq globalBody155_233 globalBody155_11

def globalBody155_235 : Prog (BitVec 64) :=
.seq globalBody155_234 globalBody155_13

def globalBody155_236 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d10"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody155_237 : Prog (BitVec 64) :=
.seq globalBody155_235 globalBody155_236

def globalBody155_238 : Prog (BitVec 64) :=
.seq globalBody155_237 globalBody155_17

def globalBody155_239 : Prog (BitVec 64) :=
.seq globalBody155_238 globalBody155_19

def globalBody155_240 : Prog (BitVec 64) :=
.seq globalBody155_239 globalBody155_21

def globalBody155_241 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a4", Flapjack.Exp.var Flapjack.VarKind.local "a7"])

def globalBody155_242 : Prog (BitVec 64) :=
.seq globalBody155_240 globalBody155_241

def globalBody155_243 : Prog (BitVec 64) :=
.seq globalBody155_242 globalBody155_25

def globalBody155_244 : Prog (BitVec 64) :=
.seq globalBody155_243 globalBody155_27

def globalBody155_245 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "a6"])

def globalBody155_246 : Prog (BitVec 64) :=
.seq globalBody155_244 globalBody155_245

def globalBody155_247 : Prog (BitVec 64) :=
.seq globalBody155_246 globalBody155_25

def globalBody155_248 : Prog (BitVec 64) :=
.seq globalBody155_247 globalBody155_27

def globalBody155_249 : Prog (BitVec 64) :=
.seq globalBody155_248 globalBody155_5

def globalBody155_250 : Prog (BitVec 64) :=
.seq globalBody155_249 globalBody155_7

def globalBody155_251 : Prog (BitVec 64) :=
.seq globalBody155_250 globalBody155_9

def globalBody155_252 : Prog (BitVec 64) :=
.seq globalBody155_251 globalBody155_11

def globalBody155_253 : Prog (BitVec 64) :=
.seq globalBody155_252 globalBody155_13

def globalBody155_254 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d11"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody155_255 : Prog (BitVec 64) :=
.seq globalBody155_253 globalBody155_254

def globalBody155_256 : Prog (BitVec 64) :=
.seq globalBody155_255 globalBody155_17

def globalBody155_257 : Prog (BitVec 64) :=
.seq globalBody155_256 globalBody155_19

def globalBody155_258 : Prog (BitVec 64) :=
.seq globalBody155_257 globalBody155_21

def globalBody155_259 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a5", Flapjack.Exp.var Flapjack.VarKind.local "a7"])

def globalBody155_260 : Prog (BitVec 64) :=
.seq globalBody155_258 globalBody155_259

def globalBody155_261 : Prog (BitVec 64) :=
.seq globalBody155_260 globalBody155_25

def globalBody155_262 : Prog (BitVec 64) :=
.seq globalBody155_261 globalBody155_27

def globalBody155_263 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "a6"])

def globalBody155_264 : Prog (BitVec 64) :=
.seq globalBody155_262 globalBody155_263

def globalBody155_265 : Prog (BitVec 64) :=
.seq globalBody155_264 globalBody155_1

def globalBody155_266 : Prog (BitVec 64) :=
.seq globalBody155_265 globalBody155_3

def globalBody155_267 : Prog (BitVec 64) :=
.seq globalBody155_266 globalBody155_5

def globalBody155_268 : Prog (BitVec 64) :=
.seq globalBody155_267 globalBody155_7

def globalBody155_269 : Prog (BitVec 64) :=
.seq globalBody155_268 globalBody155_9

def globalBody155_270 : Prog (BitVec 64) :=
.seq globalBody155_269 globalBody155_11

def globalBody155_271 : Prog (BitVec 64) :=
.seq globalBody155_270 globalBody155_13

def globalBody155_272 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d12"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody155_273 : Prog (BitVec 64) :=
.seq globalBody155_271 globalBody155_272

def globalBody155_274 : Prog (BitVec 64) :=
.seq globalBody155_273 globalBody155_17

def globalBody155_275 : Prog (BitVec 64) :=
.seq globalBody155_274 globalBody155_19

def globalBody155_276 : Prog (BitVec 64) :=
.seq globalBody155_275 globalBody155_21

def globalBody155_277 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a6", Flapjack.Exp.var Flapjack.VarKind.local "a7"])

def globalBody155_278 : Prog (BitVec 64) :=
.seq globalBody155_276 globalBody155_277

def globalBody155_279 : Prog (BitVec 64) :=
.seq globalBody155_278 globalBody155_25

def globalBody155_280 : Prog (BitVec 64) :=
.seq globalBody155_279 globalBody155_27

def globalBody155_281 : Prog (BitVec 64) :=
.seq globalBody155_280 globalBody155_5

def globalBody155_282 : Prog (BitVec 64) :=
.seq globalBody155_281 globalBody155_7

def globalBody155_283 : Prog (BitVec 64) :=
.seq globalBody155_282 globalBody155_9

def globalBody155_284 : Prog (BitVec 64) :=
.seq globalBody155_283 globalBody155_11

def globalBody155_285 : Prog (BitVec 64) :=
.seq globalBody155_284 globalBody155_13

def globalBody155_286 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d13"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody155_287 : Prog (BitVec 64) :=
.seq globalBody155_285 globalBody155_286

def globalBody155_288 : Prog (BitVec 64) :=
.seq globalBody155_287 globalBody155_17

def globalBody155_289 : Prog (BitVec 64) :=
.seq globalBody155_288 globalBody155_19

def globalBody155_290 : Prog (BitVec 64) :=
.seq globalBody155_289 globalBody155_21

def globalBody155_291 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "a7", Flapjack.Exp.var Flapjack.VarKind.local "a7"])

def globalBody155_292 : Prog (BitVec 64) :=
.seq globalBody155_290 globalBody155_291

def globalBody155_293 : Prog (BitVec 64) :=
.seq globalBody155_292 globalBody155_1

def globalBody155_294 : Prog (BitVec 64) :=
.seq globalBody155_293 globalBody155_3

def globalBody155_295 : Prog (BitVec 64) :=
.seq globalBody155_294 globalBody155_5

def globalBody155_296 : Prog (BitVec 64) :=
.seq globalBody155_295 globalBody155_7

def globalBody155_297 : Prog (BitVec 64) :=
.seq globalBody155_296 globalBody155_9

def globalBody155_298 : Prog (BitVec 64) :=
.seq globalBody155_297 globalBody155_11

def globalBody155_299 : Prog (BitVec 64) :=
.seq globalBody155_298 globalBody155_13

def globalBody155_300 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d14"
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64])

def globalBody155_301 : Prog (BitVec 64) :=
.seq globalBody155_299 globalBody155_300

def globalBody155_302 : Prog (BitVec 64) :=
.seq globalBody155_301 globalBody155_17

def globalBody155_303 : Prog (BitVec 64) :=
.seq globalBody155_302 globalBody155_19

def globalBody155_304 : Prog (BitVec 64) :=
.seq globalBody155_303 globalBody155_21

def globalBody155_305 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "d15" (Flapjack.Exp.var Flapjack.VarKind.local "c")

def globalBody155_306 : Prog (BitVec 64) :=
.seq globalBody155_304 globalBody155_305

def globalBody155_307 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d0",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 977#64, Flapjack.Exp.var Flapjack.VarKind.local "d8"]])

def globalBody155_308 : Prog (BitVec 64) :=
.seq globalBody155_306 globalBody155_307

def globalBody155_309 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "col") (Flapjack.Exp.const 32#64))

def globalBody155_310 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d1", Flapjack.Exp.var Flapjack.VarKind.local "d8",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 977#64, Flapjack.Exp.var Flapjack.VarKind.local "d9"],
      Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody155_311 : Prog (BitVec 64) :=
.seq globalBody155_309 globalBody155_310

def globalBody155_312 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d2", Flapjack.Exp.var Flapjack.VarKind.local "d9",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 977#64, Flapjack.Exp.var Flapjack.VarKind.local "d10"],
      Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody155_313 : Prog (BitVec 64) :=
.seq globalBody155_309 globalBody155_312

def globalBody155_314 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d3", Flapjack.Exp.var Flapjack.VarKind.local "d10",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 977#64, Flapjack.Exp.var Flapjack.VarKind.local "d11"],
      Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody155_315 : Prog (BitVec 64) :=
.seq globalBody155_309 globalBody155_314

def globalBody155_316 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d4", Flapjack.Exp.var Flapjack.VarKind.local "d11",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 977#64, Flapjack.Exp.var Flapjack.VarKind.local "d12"],
      Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody155_317 : Prog (BitVec 64) :=
.seq globalBody155_309 globalBody155_316

def globalBody155_318 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d5", Flapjack.Exp.var Flapjack.VarKind.local "d12",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 977#64, Flapjack.Exp.var Flapjack.VarKind.local "d13"],
      Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody155_319 : Prog (BitVec 64) :=
.seq globalBody155_309 globalBody155_318

def globalBody155_320 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d6", Flapjack.Exp.var Flapjack.VarKind.local "d13",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 977#64, Flapjack.Exp.var Flapjack.VarKind.local "d14"],
      Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody155_321 : Prog (BitVec 64) :=
.seq globalBody155_309 globalBody155_320

def globalBody155_322 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "d7", Flapjack.Exp.var Flapjack.VarKind.local "d14",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 977#64, Flapjack.Exp.var Flapjack.VarKind.local "d15"],
      Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody155_323 : Prog (BitVec 64) :=
.seq globalBody155_309 globalBody155_322

def globalBody155_324 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "u0",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 977#64, Flapjack.Exp.var Flapjack.VarKind.local "uhi"]])

def globalBody155_325 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "u1",
      Flapjack.Exp.op Flapjack.BinOp.and
        [Flapjack.Exp.var Flapjack.VarKind.local "uhi", Flapjack.Exp.const 4294967295#64],
      Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody155_326 : Prog (BitVec 64) :=
.seq globalBody155_309 globalBody155_325

def globalBody155_327 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "u2",
      Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "uhi") (Flapjack.Exp.const 32#64),
      Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody155_328 : Prog (BitVec 64) :=
.seq globalBody155_309 globalBody155_327

def globalBody155_329 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "u3", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody155_330 : Prog (BitVec 64) :=
.seq globalBody155_309 globalBody155_329

def globalBody155_331 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "u4", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody155_332 : Prog (BitVec 64) :=
.seq globalBody155_309 globalBody155_331

def globalBody155_333 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "u5", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody155_334 : Prog (BitVec 64) :=
.seq globalBody155_309 globalBody155_333

def globalBody155_335 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "u6", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody155_336 : Prog (BitVec 64) :=
.seq globalBody155_309 globalBody155_335

def globalBody155_337 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "col"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "u7", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody155_338 : Prog (BitVec 64) :=
.seq globalBody155_309 globalBody155_337

def globalBody155_339 : Prog (BitVec 64) :=
Flapjack.Prog.call none "u256_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "r",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 4294968273#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]]

def globalBody155_340 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody155_341 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "c") (Flapjack.Exp.const 1#64)) globalBody155_339 globalBody155_340

def globalBody155_342 : Prog (BitVec 64) :=
Flapjack.Prog.call none "fp_reduce" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def globalBody155_343 : Prog (BitVec 64) :=
.seq globalBody155_341 globalBody155_342

def globalBody155_344 : Prog (BitVec 64) :=
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
          (Flapjack.Exp.const 32#64)]]) globalBody155_343

def globalBody155_345 : Prog (BitVec 64) :=
.seq globalBody155_309 globalBody155_344

def globalBody155_346 : Prog (BitVec 64) :=
.dec ("v7") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody155_345

def globalBody155_347 : Prog (BitVec 64) :=
.seq globalBody155_338 globalBody155_346

def globalBody155_348 : Prog (BitVec 64) :=
.dec ("v6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody155_347

def globalBody155_349 : Prog (BitVec 64) :=
.seq globalBody155_336 globalBody155_348

def globalBody155_350 : Prog (BitVec 64) :=
.dec ("v5") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody155_349

def globalBody155_351 : Prog (BitVec 64) :=
.seq globalBody155_334 globalBody155_350

def globalBody155_352 : Prog (BitVec 64) :=
.dec ("v4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody155_351

def globalBody155_353 : Prog (BitVec 64) :=
.seq globalBody155_332 globalBody155_352

def globalBody155_354 : Prog (BitVec 64) :=
.dec ("v3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody155_353

def globalBody155_355 : Prog (BitVec 64) :=
.seq globalBody155_330 globalBody155_354

def globalBody155_356 : Prog (BitVec 64) :=
.dec ("v2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody155_355

def globalBody155_357 : Prog (BitVec 64) :=
.seq globalBody155_328 globalBody155_356

def globalBody155_358 : Prog (BitVec 64) :=
.dec ("v1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody155_357

def globalBody155_359 : Prog (BitVec 64) :=
.seq globalBody155_326 globalBody155_358

def globalBody155_360 : Prog (BitVec 64) :=
.dec ("v0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody155_359

def globalBody155_361 : Prog (BitVec 64) :=
.seq globalBody155_324 globalBody155_360

def globalBody155_362 : Prog (BitVec 64) :=
.dec ("uhi") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "d15", Flapjack.Exp.var Flapjack.VarKind.local "c"]) globalBody155_361

def globalBody155_363 : Prog (BitVec 64) :=
.seq globalBody155_309 globalBody155_362

def globalBody155_364 : Prog (BitVec 64) :=
.dec ("u7") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody155_363

def globalBody155_365 : Prog (BitVec 64) :=
.seq globalBody155_323 globalBody155_364

def globalBody155_366 : Prog (BitVec 64) :=
.dec ("u6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody155_365

def globalBody155_367 : Prog (BitVec 64) :=
.seq globalBody155_321 globalBody155_366

def globalBody155_368 : Prog (BitVec 64) :=
.dec ("u5") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody155_367

def globalBody155_369 : Prog (BitVec 64) :=
.seq globalBody155_319 globalBody155_368

def globalBody155_370 : Prog (BitVec 64) :=
.dec ("u4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody155_369

def globalBody155_371 : Prog (BitVec 64) :=
.seq globalBody155_317 globalBody155_370

def globalBody155_372 : Prog (BitVec 64) :=
.dec ("u3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody155_371

def globalBody155_373 : Prog (BitVec 64) :=
.seq globalBody155_315 globalBody155_372

def globalBody155_374 : Prog (BitVec 64) :=
.dec ("u2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody155_373

def globalBody155_375 : Prog (BitVec 64) :=
.seq globalBody155_313 globalBody155_374

def globalBody155_376 : Prog (BitVec 64) :=
.dec ("u1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody155_375

def globalBody155_377 : Prog (BitVec 64) :=
.seq globalBody155_311 globalBody155_376

def globalBody155_378 : Prog (BitVec 64) :=
.dec ("u0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "col", Flapjack.Exp.const 4294967295#64]) globalBody155_377

def globalBody155_379 : Prog (BitVec 64) :=
.seq globalBody155_308 globalBody155_378

def globalBody155_380 : Prog (BitVec 64) :=
.dec ("d15") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody155_379

def globalBody155_381 : Prog (BitVec 64) :=
.dec ("d14") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody155_380

def globalBody155_382 : Prog (BitVec 64) :=
.dec ("d13") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody155_381

def globalBody155_383 : Prog (BitVec 64) :=
.dec ("d12") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody155_382

def globalBody155_384 : Prog (BitVec 64) :=
.dec ("d11") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody155_383

def globalBody155_385 : Prog (BitVec 64) :=
.dec ("d10") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody155_384

def globalBody155_386 : Prog (BitVec 64) :=
.dec ("d9") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody155_385

def globalBody155_387 : Prog (BitVec 64) :=
.dec ("d8") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody155_386

def globalBody155_388 : Prog (BitVec 64) :=
.dec ("d7") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody155_387

def globalBody155_389 : Prog (BitVec 64) :=
.dec ("d6") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody155_388

def globalBody155_390 : Prog (BitVec 64) :=
.dec ("d5") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody155_389

def globalBody155_391 : Prog (BitVec 64) :=
.dec ("d4") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody155_390

def globalBody155_392 : Prog (BitVec 64) :=
.dec ("d3") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody155_391

def globalBody155_393 : Prog (BitVec 64) :=
.dec ("d2") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody155_392

def globalBody155_394 : Prog (BitVec 64) :=
.dec ("d1") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody155_393

def globalBody155_395 : Prog (BitVec 64) :=
.dec ("d0") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody155_394

def globalBody155_396 : Prog (BitVec 64) :=
.dec ("col") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody155_395

def globalBody155_397 : Prog (BitVec 64) :=
.dec ("c") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody155_396

def globalBody155_398 : Prog (BitVec 64) :=
.dec ("Hc") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody155_397

def globalBody155_399 : Prog (BitVec 64) :=
.dec ("Lc") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody155_398

def globalBody155_400 : Prog (BitVec 64) :=
.dec ("H") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody155_399

def globalBody155_401 : Prog (BitVec 64) :=
.dec ("L") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody155_400

def globalBody155_402 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody155_401

def globalBody155_403 : Prog (BitVec 64) :=
.dec ("a7") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) globalBody155_402

def globalBody155_404 : Prog (BitVec 64) :=
.dec ("a6") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) globalBody155_403

def globalBody155_405 : Prog (BitVec 64) :=
.dec ("a5") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) globalBody155_404

def globalBody155_406 : Prog (BitVec 64) :=
.dec ("a4") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) globalBody155_405

def globalBody155_407 : Prog (BitVec 64) :=
.dec ("a3") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) globalBody155_406

def globalBody155_408 : Prog (BitVec 64) :=
.dec ("a2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) globalBody155_407

def globalBody155_409 : Prog (BitVec 64) :=
.dec ("a1") (Flapjack.Shape.one) (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
  (Flapjack.Exp.const 32#64)) globalBody155_408

def globalBody155_410 : Prog (BitVec 64) :=
.dec ("a0") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"), Flapjack.Exp.const 4294967295#64]) globalBody155_409

def globalData155 : Decl (BitVec 64) :=
.function { name := "fp_sqr", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody155_410, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput155 := Pancake.PanLang.declToHOL globalData155
end InitECandidate.Proofs.FrontendStages.Declarations
