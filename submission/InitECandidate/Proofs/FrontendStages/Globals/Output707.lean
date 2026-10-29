import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data707
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate690
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody707_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_1 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "s" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "t0", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "pr"),
    Flapjack.Exp.const 0#64]

def globalBody707_2 : Prog (BitVec 64) :=
.seq globalBody707_0 globalBody707_1

def globalBody707_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t0" (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s"))

def globalBody707_4 : Prog (BitVec 64) :=
.seq globalBody707_2 globalBody707_3

def globalBody707_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "pr"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s")])

def globalBody707_6 : Prog (BitVec 64) :=
.seq globalBody707_4 globalBody707_5

def globalBody707_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_8 : Prog (BitVec 64) :=
.seq globalBody707_6 globalBody707_7

def globalBody707_9 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "s" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "t1", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "pr"),
    Flapjack.Exp.const 0#64]

def globalBody707_10 : Prog (BitVec 64) :=
.seq globalBody707_8 globalBody707_9

def globalBody707_11 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "s2" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s"), Flapjack.Exp.var Flapjack.VarKind.local "c",
    Flapjack.Exp.const 0#64]

def globalBody707_12 : Prog (BitVec 64) :=
.seq globalBody707_10 globalBody707_11

def globalBody707_13 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t1" (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s2"))

def globalBody707_14 : Prog (BitVec 64) :=
.seq globalBody707_12 globalBody707_13

def globalBody707_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "c"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "pr"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "s2")])

def globalBody707_16 : Prog (BitVec 64) :=
.seq globalBody707_14 globalBody707_15

def globalBody707_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_18 : Prog (BitVec 64) :=
.seq globalBody707_16 globalBody707_17

def globalBody707_19 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "s" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "pr"),
    Flapjack.Exp.const 0#64]

def globalBody707_20 : Prog (BitVec 64) :=
.seq globalBody707_18 globalBody707_19

def globalBody707_21 : Prog (BitVec 64) :=
.seq globalBody707_20 globalBody707_11

def globalBody707_22 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t2" (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s2"))

def globalBody707_23 : Prog (BitVec 64) :=
.seq globalBody707_21 globalBody707_22

def globalBody707_24 : Prog (BitVec 64) :=
.seq globalBody707_23 globalBody707_15

def globalBody707_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_26 : Prog (BitVec 64) :=
.seq globalBody707_24 globalBody707_25

def globalBody707_27 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "s" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "t3", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "pr"),
    Flapjack.Exp.const 0#64]

def globalBody707_28 : Prog (BitVec 64) :=
.seq globalBody707_26 globalBody707_27

def globalBody707_29 : Prog (BitVec 64) :=
.seq globalBody707_28 globalBody707_11

def globalBody707_30 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t3" (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s2"))

def globalBody707_31 : Prog (BitVec 64) :=
.seq globalBody707_29 globalBody707_30

def globalBody707_32 : Prog (BitVec 64) :=
.seq globalBody707_31 globalBody707_15

def globalBody707_33 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_34 : Prog (BitVec 64) :=
.seq globalBody707_32 globalBody707_33

def globalBody707_35 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "s" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "t4", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "pr"),
    Flapjack.Exp.const 0#64]

def globalBody707_36 : Prog (BitVec 64) :=
.seq globalBody707_34 globalBody707_35

def globalBody707_37 : Prog (BitVec 64) :=
.seq globalBody707_36 globalBody707_11

def globalBody707_38 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t4" (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s2"))

def globalBody707_39 : Prog (BitVec 64) :=
.seq globalBody707_37 globalBody707_38

def globalBody707_40 : Prog (BitVec 64) :=
.seq globalBody707_39 globalBody707_15

def globalBody707_41 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_42 : Prog (BitVec 64) :=
.seq globalBody707_40 globalBody707_41

def globalBody707_43 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "s" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "t5", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "pr"),
    Flapjack.Exp.const 0#64]

def globalBody707_44 : Prog (BitVec 64) :=
.seq globalBody707_42 globalBody707_43

def globalBody707_45 : Prog (BitVec 64) :=
.seq globalBody707_44 globalBody707_11

def globalBody707_46 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t5" (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s2"))

def globalBody707_47 : Prog (BitVec 64) :=
.seq globalBody707_45 globalBody707_46

def globalBody707_48 : Prog (BitVec 64) :=
.seq globalBody707_47 globalBody707_15

def globalBody707_49 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t6"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t6", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody707_50 : Prog (BitVec 64) :=
.seq globalBody707_48 globalBody707_49

def globalBody707_51 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "m"
  (Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "t0", Flapjack.Exp.const 9940570264628428797#64])

def globalBody707_52 : Prog (BitVec 64) :=
.seq globalBody707_50 globalBody707_51

def globalBody707_53 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 13402431016077863595#64]

def globalBody707_54 : Prog (BitVec 64) :=
.seq globalBody707_52 globalBody707_53

def globalBody707_55 : Prog (BitVec 64) :=
.seq globalBody707_54 globalBody707_1

def globalBody707_56 : Prog (BitVec 64) :=
.seq globalBody707_55 globalBody707_5

def globalBody707_57 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 2210141511517208575#64]

def globalBody707_58 : Prog (BitVec 64) :=
.seq globalBody707_56 globalBody707_57

def globalBody707_59 : Prog (BitVec 64) :=
.seq globalBody707_58 globalBody707_9

def globalBody707_60 : Prog (BitVec 64) :=
.seq globalBody707_59 globalBody707_11

def globalBody707_61 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t0" (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "s2"))

def globalBody707_62 : Prog (BitVec 64) :=
.seq globalBody707_60 globalBody707_61

def globalBody707_63 : Prog (BitVec 64) :=
.seq globalBody707_62 globalBody707_15

def globalBody707_64 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 7435674573564081700#64]

def globalBody707_65 : Prog (BitVec 64) :=
.seq globalBody707_63 globalBody707_64

def globalBody707_66 : Prog (BitVec 64) :=
.seq globalBody707_65 globalBody707_19

def globalBody707_67 : Prog (BitVec 64) :=
.seq globalBody707_66 globalBody707_11

def globalBody707_68 : Prog (BitVec 64) :=
.seq globalBody707_67 globalBody707_13

def globalBody707_69 : Prog (BitVec 64) :=
.seq globalBody707_68 globalBody707_15

def globalBody707_70 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 7239337960414712511#64]

def globalBody707_71 : Prog (BitVec 64) :=
.seq globalBody707_69 globalBody707_70

def globalBody707_72 : Prog (BitVec 64) :=
.seq globalBody707_71 globalBody707_27

def globalBody707_73 : Prog (BitVec 64) :=
.seq globalBody707_72 globalBody707_11

def globalBody707_74 : Prog (BitVec 64) :=
.seq globalBody707_73 globalBody707_22

def globalBody707_75 : Prog (BitVec 64) :=
.seq globalBody707_74 globalBody707_15

def globalBody707_76 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 5412103778470702295#64]

def globalBody707_77 : Prog (BitVec 64) :=
.seq globalBody707_75 globalBody707_76

def globalBody707_78 : Prog (BitVec 64) :=
.seq globalBody707_77 globalBody707_35

def globalBody707_79 : Prog (BitVec 64) :=
.seq globalBody707_78 globalBody707_11

def globalBody707_80 : Prog (BitVec 64) :=
.seq globalBody707_79 globalBody707_30

def globalBody707_81 : Prog (BitVec 64) :=
.seq globalBody707_80 globalBody707_15

def globalBody707_82 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 1873798617647539866#64]

def globalBody707_83 : Prog (BitVec 64) :=
.seq globalBody707_81 globalBody707_82

def globalBody707_84 : Prog (BitVec 64) :=
.seq globalBody707_83 globalBody707_43

def globalBody707_85 : Prog (BitVec 64) :=
.seq globalBody707_84 globalBody707_11

def globalBody707_86 : Prog (BitVec 64) :=
.seq globalBody707_85 globalBody707_38

def globalBody707_87 : Prog (BitVec 64) :=
.seq globalBody707_86 globalBody707_15

def globalBody707_88 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t5"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "t6", Flapjack.Exp.var Flapjack.VarKind.local "c"])

def globalBody707_89 : Prog (BitVec 64) :=
.seq globalBody707_87 globalBody707_88

def globalBody707_90 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t6" (Flapjack.Exp.const 0#64)

def globalBody707_91 : Prog (BitVec 64) :=
.seq globalBody707_89 globalBody707_90

def globalBody707_92 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_93 : Prog (BitVec 64) :=
.seq globalBody707_91 globalBody707_92

def globalBody707_94 : Prog (BitVec 64) :=
.seq globalBody707_93 globalBody707_1

def globalBody707_95 : Prog (BitVec 64) :=
.seq globalBody707_94 globalBody707_3

def globalBody707_96 : Prog (BitVec 64) :=
.seq globalBody707_95 globalBody707_5

def globalBody707_97 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_98 : Prog (BitVec 64) :=
.seq globalBody707_96 globalBody707_97

def globalBody707_99 : Prog (BitVec 64) :=
.seq globalBody707_98 globalBody707_9

def globalBody707_100 : Prog (BitVec 64) :=
.seq globalBody707_99 globalBody707_11

def globalBody707_101 : Prog (BitVec 64) :=
.seq globalBody707_100 globalBody707_13

def globalBody707_102 : Prog (BitVec 64) :=
.seq globalBody707_101 globalBody707_15

def globalBody707_103 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_104 : Prog (BitVec 64) :=
.seq globalBody707_102 globalBody707_103

def globalBody707_105 : Prog (BitVec 64) :=
.seq globalBody707_104 globalBody707_19

def globalBody707_106 : Prog (BitVec 64) :=
.seq globalBody707_105 globalBody707_11

def globalBody707_107 : Prog (BitVec 64) :=
.seq globalBody707_106 globalBody707_22

def globalBody707_108 : Prog (BitVec 64) :=
.seq globalBody707_107 globalBody707_15

def globalBody707_109 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_110 : Prog (BitVec 64) :=
.seq globalBody707_108 globalBody707_109

def globalBody707_111 : Prog (BitVec 64) :=
.seq globalBody707_110 globalBody707_27

def globalBody707_112 : Prog (BitVec 64) :=
.seq globalBody707_111 globalBody707_11

def globalBody707_113 : Prog (BitVec 64) :=
.seq globalBody707_112 globalBody707_30

def globalBody707_114 : Prog (BitVec 64) :=
.seq globalBody707_113 globalBody707_15

def globalBody707_115 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_116 : Prog (BitVec 64) :=
.seq globalBody707_114 globalBody707_115

def globalBody707_117 : Prog (BitVec 64) :=
.seq globalBody707_116 globalBody707_35

def globalBody707_118 : Prog (BitVec 64) :=
.seq globalBody707_117 globalBody707_11

def globalBody707_119 : Prog (BitVec 64) :=
.seq globalBody707_118 globalBody707_38

def globalBody707_120 : Prog (BitVec 64) :=
.seq globalBody707_119 globalBody707_15

def globalBody707_121 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_122 : Prog (BitVec 64) :=
.seq globalBody707_120 globalBody707_121

def globalBody707_123 : Prog (BitVec 64) :=
.seq globalBody707_122 globalBody707_43

def globalBody707_124 : Prog (BitVec 64) :=
.seq globalBody707_123 globalBody707_11

def globalBody707_125 : Prog (BitVec 64) :=
.seq globalBody707_124 globalBody707_46

def globalBody707_126 : Prog (BitVec 64) :=
.seq globalBody707_125 globalBody707_15

def globalBody707_127 : Prog (BitVec 64) :=
.seq globalBody707_126 globalBody707_49

def globalBody707_128 : Prog (BitVec 64) :=
.seq globalBody707_127 globalBody707_51

def globalBody707_129 : Prog (BitVec 64) :=
.seq globalBody707_128 globalBody707_53

def globalBody707_130 : Prog (BitVec 64) :=
.seq globalBody707_129 globalBody707_1

def globalBody707_131 : Prog (BitVec 64) :=
.seq globalBody707_130 globalBody707_5

def globalBody707_132 : Prog (BitVec 64) :=
.seq globalBody707_131 globalBody707_57

def globalBody707_133 : Prog (BitVec 64) :=
.seq globalBody707_132 globalBody707_9

def globalBody707_134 : Prog (BitVec 64) :=
.seq globalBody707_133 globalBody707_11

def globalBody707_135 : Prog (BitVec 64) :=
.seq globalBody707_134 globalBody707_61

def globalBody707_136 : Prog (BitVec 64) :=
.seq globalBody707_135 globalBody707_15

def globalBody707_137 : Prog (BitVec 64) :=
.seq globalBody707_136 globalBody707_64

def globalBody707_138 : Prog (BitVec 64) :=
.seq globalBody707_137 globalBody707_19

def globalBody707_139 : Prog (BitVec 64) :=
.seq globalBody707_138 globalBody707_11

def globalBody707_140 : Prog (BitVec 64) :=
.seq globalBody707_139 globalBody707_13

def globalBody707_141 : Prog (BitVec 64) :=
.seq globalBody707_140 globalBody707_15

def globalBody707_142 : Prog (BitVec 64) :=
.seq globalBody707_141 globalBody707_70

def globalBody707_143 : Prog (BitVec 64) :=
.seq globalBody707_142 globalBody707_27

def globalBody707_144 : Prog (BitVec 64) :=
.seq globalBody707_143 globalBody707_11

def globalBody707_145 : Prog (BitVec 64) :=
.seq globalBody707_144 globalBody707_22

def globalBody707_146 : Prog (BitVec 64) :=
.seq globalBody707_145 globalBody707_15

def globalBody707_147 : Prog (BitVec 64) :=
.seq globalBody707_146 globalBody707_76

def globalBody707_148 : Prog (BitVec 64) :=
.seq globalBody707_147 globalBody707_35

def globalBody707_149 : Prog (BitVec 64) :=
.seq globalBody707_148 globalBody707_11

def globalBody707_150 : Prog (BitVec 64) :=
.seq globalBody707_149 globalBody707_30

def globalBody707_151 : Prog (BitVec 64) :=
.seq globalBody707_150 globalBody707_15

def globalBody707_152 : Prog (BitVec 64) :=
.seq globalBody707_151 globalBody707_82

def globalBody707_153 : Prog (BitVec 64) :=
.seq globalBody707_152 globalBody707_43

def globalBody707_154 : Prog (BitVec 64) :=
.seq globalBody707_153 globalBody707_11

def globalBody707_155 : Prog (BitVec 64) :=
.seq globalBody707_154 globalBody707_38

def globalBody707_156 : Prog (BitVec 64) :=
.seq globalBody707_155 globalBody707_15

def globalBody707_157 : Prog (BitVec 64) :=
.seq globalBody707_156 globalBody707_88

def globalBody707_158 : Prog (BitVec 64) :=
.seq globalBody707_157 globalBody707_90

def globalBody707_159 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_160 : Prog (BitVec 64) :=
.seq globalBody707_158 globalBody707_159

def globalBody707_161 : Prog (BitVec 64) :=
.seq globalBody707_160 globalBody707_1

def globalBody707_162 : Prog (BitVec 64) :=
.seq globalBody707_161 globalBody707_3

def globalBody707_163 : Prog (BitVec 64) :=
.seq globalBody707_162 globalBody707_5

def globalBody707_164 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_165 : Prog (BitVec 64) :=
.seq globalBody707_163 globalBody707_164

def globalBody707_166 : Prog (BitVec 64) :=
.seq globalBody707_165 globalBody707_9

def globalBody707_167 : Prog (BitVec 64) :=
.seq globalBody707_166 globalBody707_11

def globalBody707_168 : Prog (BitVec 64) :=
.seq globalBody707_167 globalBody707_13

def globalBody707_169 : Prog (BitVec 64) :=
.seq globalBody707_168 globalBody707_15

def globalBody707_170 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_171 : Prog (BitVec 64) :=
.seq globalBody707_169 globalBody707_170

def globalBody707_172 : Prog (BitVec 64) :=
.seq globalBody707_171 globalBody707_19

def globalBody707_173 : Prog (BitVec 64) :=
.seq globalBody707_172 globalBody707_11

def globalBody707_174 : Prog (BitVec 64) :=
.seq globalBody707_173 globalBody707_22

def globalBody707_175 : Prog (BitVec 64) :=
.seq globalBody707_174 globalBody707_15

def globalBody707_176 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_177 : Prog (BitVec 64) :=
.seq globalBody707_175 globalBody707_176

def globalBody707_178 : Prog (BitVec 64) :=
.seq globalBody707_177 globalBody707_27

def globalBody707_179 : Prog (BitVec 64) :=
.seq globalBody707_178 globalBody707_11

def globalBody707_180 : Prog (BitVec 64) :=
.seq globalBody707_179 globalBody707_30

def globalBody707_181 : Prog (BitVec 64) :=
.seq globalBody707_180 globalBody707_15

def globalBody707_182 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_183 : Prog (BitVec 64) :=
.seq globalBody707_181 globalBody707_182

def globalBody707_184 : Prog (BitVec 64) :=
.seq globalBody707_183 globalBody707_35

def globalBody707_185 : Prog (BitVec 64) :=
.seq globalBody707_184 globalBody707_11

def globalBody707_186 : Prog (BitVec 64) :=
.seq globalBody707_185 globalBody707_38

def globalBody707_187 : Prog (BitVec 64) :=
.seq globalBody707_186 globalBody707_15

def globalBody707_188 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_189 : Prog (BitVec 64) :=
.seq globalBody707_187 globalBody707_188

def globalBody707_190 : Prog (BitVec 64) :=
.seq globalBody707_189 globalBody707_43

def globalBody707_191 : Prog (BitVec 64) :=
.seq globalBody707_190 globalBody707_11

def globalBody707_192 : Prog (BitVec 64) :=
.seq globalBody707_191 globalBody707_46

def globalBody707_193 : Prog (BitVec 64) :=
.seq globalBody707_192 globalBody707_15

def globalBody707_194 : Prog (BitVec 64) :=
.seq globalBody707_193 globalBody707_49

def globalBody707_195 : Prog (BitVec 64) :=
.seq globalBody707_194 globalBody707_51

def globalBody707_196 : Prog (BitVec 64) :=
.seq globalBody707_195 globalBody707_53

def globalBody707_197 : Prog (BitVec 64) :=
.seq globalBody707_196 globalBody707_1

def globalBody707_198 : Prog (BitVec 64) :=
.seq globalBody707_197 globalBody707_5

def globalBody707_199 : Prog (BitVec 64) :=
.seq globalBody707_198 globalBody707_57

def globalBody707_200 : Prog (BitVec 64) :=
.seq globalBody707_199 globalBody707_9

def globalBody707_201 : Prog (BitVec 64) :=
.seq globalBody707_200 globalBody707_11

def globalBody707_202 : Prog (BitVec 64) :=
.seq globalBody707_201 globalBody707_61

def globalBody707_203 : Prog (BitVec 64) :=
.seq globalBody707_202 globalBody707_15

def globalBody707_204 : Prog (BitVec 64) :=
.seq globalBody707_203 globalBody707_64

def globalBody707_205 : Prog (BitVec 64) :=
.seq globalBody707_204 globalBody707_19

def globalBody707_206 : Prog (BitVec 64) :=
.seq globalBody707_205 globalBody707_11

def globalBody707_207 : Prog (BitVec 64) :=
.seq globalBody707_206 globalBody707_13

def globalBody707_208 : Prog (BitVec 64) :=
.seq globalBody707_207 globalBody707_15

def globalBody707_209 : Prog (BitVec 64) :=
.seq globalBody707_208 globalBody707_70

def globalBody707_210 : Prog (BitVec 64) :=
.seq globalBody707_209 globalBody707_27

def globalBody707_211 : Prog (BitVec 64) :=
.seq globalBody707_210 globalBody707_11

def globalBody707_212 : Prog (BitVec 64) :=
.seq globalBody707_211 globalBody707_22

def globalBody707_213 : Prog (BitVec 64) :=
.seq globalBody707_212 globalBody707_15

def globalBody707_214 : Prog (BitVec 64) :=
.seq globalBody707_213 globalBody707_76

def globalBody707_215 : Prog (BitVec 64) :=
.seq globalBody707_214 globalBody707_35

def globalBody707_216 : Prog (BitVec 64) :=
.seq globalBody707_215 globalBody707_11

def globalBody707_217 : Prog (BitVec 64) :=
.seq globalBody707_216 globalBody707_30

def globalBody707_218 : Prog (BitVec 64) :=
.seq globalBody707_217 globalBody707_15

def globalBody707_219 : Prog (BitVec 64) :=
.seq globalBody707_218 globalBody707_82

def globalBody707_220 : Prog (BitVec 64) :=
.seq globalBody707_219 globalBody707_43

def globalBody707_221 : Prog (BitVec 64) :=
.seq globalBody707_220 globalBody707_11

def globalBody707_222 : Prog (BitVec 64) :=
.seq globalBody707_221 globalBody707_38

def globalBody707_223 : Prog (BitVec 64) :=
.seq globalBody707_222 globalBody707_15

def globalBody707_224 : Prog (BitVec 64) :=
.seq globalBody707_223 globalBody707_88

def globalBody707_225 : Prog (BitVec 64) :=
.seq globalBody707_224 globalBody707_90

def globalBody707_226 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_227 : Prog (BitVec 64) :=
.seq globalBody707_225 globalBody707_226

def globalBody707_228 : Prog (BitVec 64) :=
.seq globalBody707_227 globalBody707_1

def globalBody707_229 : Prog (BitVec 64) :=
.seq globalBody707_228 globalBody707_3

def globalBody707_230 : Prog (BitVec 64) :=
.seq globalBody707_229 globalBody707_5

def globalBody707_231 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_232 : Prog (BitVec 64) :=
.seq globalBody707_230 globalBody707_231

def globalBody707_233 : Prog (BitVec 64) :=
.seq globalBody707_232 globalBody707_9

def globalBody707_234 : Prog (BitVec 64) :=
.seq globalBody707_233 globalBody707_11

def globalBody707_235 : Prog (BitVec 64) :=
.seq globalBody707_234 globalBody707_13

def globalBody707_236 : Prog (BitVec 64) :=
.seq globalBody707_235 globalBody707_15

def globalBody707_237 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_238 : Prog (BitVec 64) :=
.seq globalBody707_236 globalBody707_237

def globalBody707_239 : Prog (BitVec 64) :=
.seq globalBody707_238 globalBody707_19

def globalBody707_240 : Prog (BitVec 64) :=
.seq globalBody707_239 globalBody707_11

def globalBody707_241 : Prog (BitVec 64) :=
.seq globalBody707_240 globalBody707_22

def globalBody707_242 : Prog (BitVec 64) :=
.seq globalBody707_241 globalBody707_15

def globalBody707_243 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_244 : Prog (BitVec 64) :=
.seq globalBody707_242 globalBody707_243

def globalBody707_245 : Prog (BitVec 64) :=
.seq globalBody707_244 globalBody707_27

def globalBody707_246 : Prog (BitVec 64) :=
.seq globalBody707_245 globalBody707_11

def globalBody707_247 : Prog (BitVec 64) :=
.seq globalBody707_246 globalBody707_30

def globalBody707_248 : Prog (BitVec 64) :=
.seq globalBody707_247 globalBody707_15

def globalBody707_249 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_250 : Prog (BitVec 64) :=
.seq globalBody707_248 globalBody707_249

def globalBody707_251 : Prog (BitVec 64) :=
.seq globalBody707_250 globalBody707_35

def globalBody707_252 : Prog (BitVec 64) :=
.seq globalBody707_251 globalBody707_11

def globalBody707_253 : Prog (BitVec 64) :=
.seq globalBody707_252 globalBody707_38

def globalBody707_254 : Prog (BitVec 64) :=
.seq globalBody707_253 globalBody707_15

def globalBody707_255 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_256 : Prog (BitVec 64) :=
.seq globalBody707_254 globalBody707_255

def globalBody707_257 : Prog (BitVec 64) :=
.seq globalBody707_256 globalBody707_43

def globalBody707_258 : Prog (BitVec 64) :=
.seq globalBody707_257 globalBody707_11

def globalBody707_259 : Prog (BitVec 64) :=
.seq globalBody707_258 globalBody707_46

def globalBody707_260 : Prog (BitVec 64) :=
.seq globalBody707_259 globalBody707_15

def globalBody707_261 : Prog (BitVec 64) :=
.seq globalBody707_260 globalBody707_49

def globalBody707_262 : Prog (BitVec 64) :=
.seq globalBody707_261 globalBody707_51

def globalBody707_263 : Prog (BitVec 64) :=
.seq globalBody707_262 globalBody707_53

def globalBody707_264 : Prog (BitVec 64) :=
.seq globalBody707_263 globalBody707_1

def globalBody707_265 : Prog (BitVec 64) :=
.seq globalBody707_264 globalBody707_5

def globalBody707_266 : Prog (BitVec 64) :=
.seq globalBody707_265 globalBody707_57

def globalBody707_267 : Prog (BitVec 64) :=
.seq globalBody707_266 globalBody707_9

def globalBody707_268 : Prog (BitVec 64) :=
.seq globalBody707_267 globalBody707_11

def globalBody707_269 : Prog (BitVec 64) :=
.seq globalBody707_268 globalBody707_61

def globalBody707_270 : Prog (BitVec 64) :=
.seq globalBody707_269 globalBody707_15

def globalBody707_271 : Prog (BitVec 64) :=
.seq globalBody707_270 globalBody707_64

def globalBody707_272 : Prog (BitVec 64) :=
.seq globalBody707_271 globalBody707_19

def globalBody707_273 : Prog (BitVec 64) :=
.seq globalBody707_272 globalBody707_11

def globalBody707_274 : Prog (BitVec 64) :=
.seq globalBody707_273 globalBody707_13

def globalBody707_275 : Prog (BitVec 64) :=
.seq globalBody707_274 globalBody707_15

def globalBody707_276 : Prog (BitVec 64) :=
.seq globalBody707_275 globalBody707_70

def globalBody707_277 : Prog (BitVec 64) :=
.seq globalBody707_276 globalBody707_27

def globalBody707_278 : Prog (BitVec 64) :=
.seq globalBody707_277 globalBody707_11

def globalBody707_279 : Prog (BitVec 64) :=
.seq globalBody707_278 globalBody707_22

def globalBody707_280 : Prog (BitVec 64) :=
.seq globalBody707_279 globalBody707_15

def globalBody707_281 : Prog (BitVec 64) :=
.seq globalBody707_280 globalBody707_76

def globalBody707_282 : Prog (BitVec 64) :=
.seq globalBody707_281 globalBody707_35

def globalBody707_283 : Prog (BitVec 64) :=
.seq globalBody707_282 globalBody707_11

def globalBody707_284 : Prog (BitVec 64) :=
.seq globalBody707_283 globalBody707_30

def globalBody707_285 : Prog (BitVec 64) :=
.seq globalBody707_284 globalBody707_15

def globalBody707_286 : Prog (BitVec 64) :=
.seq globalBody707_285 globalBody707_82

def globalBody707_287 : Prog (BitVec 64) :=
.seq globalBody707_286 globalBody707_43

def globalBody707_288 : Prog (BitVec 64) :=
.seq globalBody707_287 globalBody707_11

def globalBody707_289 : Prog (BitVec 64) :=
.seq globalBody707_288 globalBody707_38

def globalBody707_290 : Prog (BitVec 64) :=
.seq globalBody707_289 globalBody707_15

def globalBody707_291 : Prog (BitVec 64) :=
.seq globalBody707_290 globalBody707_88

def globalBody707_292 : Prog (BitVec 64) :=
.seq globalBody707_291 globalBody707_90

def globalBody707_293 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_294 : Prog (BitVec 64) :=
.seq globalBody707_292 globalBody707_293

def globalBody707_295 : Prog (BitVec 64) :=
.seq globalBody707_294 globalBody707_1

def globalBody707_296 : Prog (BitVec 64) :=
.seq globalBody707_295 globalBody707_3

def globalBody707_297 : Prog (BitVec 64) :=
.seq globalBody707_296 globalBody707_5

def globalBody707_298 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_299 : Prog (BitVec 64) :=
.seq globalBody707_297 globalBody707_298

def globalBody707_300 : Prog (BitVec 64) :=
.seq globalBody707_299 globalBody707_9

def globalBody707_301 : Prog (BitVec 64) :=
.seq globalBody707_300 globalBody707_11

def globalBody707_302 : Prog (BitVec 64) :=
.seq globalBody707_301 globalBody707_13

def globalBody707_303 : Prog (BitVec 64) :=
.seq globalBody707_302 globalBody707_15

def globalBody707_304 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_305 : Prog (BitVec 64) :=
.seq globalBody707_303 globalBody707_304

def globalBody707_306 : Prog (BitVec 64) :=
.seq globalBody707_305 globalBody707_19

def globalBody707_307 : Prog (BitVec 64) :=
.seq globalBody707_306 globalBody707_11

def globalBody707_308 : Prog (BitVec 64) :=
.seq globalBody707_307 globalBody707_22

def globalBody707_309 : Prog (BitVec 64) :=
.seq globalBody707_308 globalBody707_15

def globalBody707_310 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_311 : Prog (BitVec 64) :=
.seq globalBody707_309 globalBody707_310

def globalBody707_312 : Prog (BitVec 64) :=
.seq globalBody707_311 globalBody707_27

def globalBody707_313 : Prog (BitVec 64) :=
.seq globalBody707_312 globalBody707_11

def globalBody707_314 : Prog (BitVec 64) :=
.seq globalBody707_313 globalBody707_30

def globalBody707_315 : Prog (BitVec 64) :=
.seq globalBody707_314 globalBody707_15

def globalBody707_316 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_317 : Prog (BitVec 64) :=
.seq globalBody707_315 globalBody707_316

def globalBody707_318 : Prog (BitVec 64) :=
.seq globalBody707_317 globalBody707_35

def globalBody707_319 : Prog (BitVec 64) :=
.seq globalBody707_318 globalBody707_11

def globalBody707_320 : Prog (BitVec 64) :=
.seq globalBody707_319 globalBody707_38

def globalBody707_321 : Prog (BitVec 64) :=
.seq globalBody707_320 globalBody707_15

def globalBody707_322 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_323 : Prog (BitVec 64) :=
.seq globalBody707_321 globalBody707_322

def globalBody707_324 : Prog (BitVec 64) :=
.seq globalBody707_323 globalBody707_43

def globalBody707_325 : Prog (BitVec 64) :=
.seq globalBody707_324 globalBody707_11

def globalBody707_326 : Prog (BitVec 64) :=
.seq globalBody707_325 globalBody707_46

def globalBody707_327 : Prog (BitVec 64) :=
.seq globalBody707_326 globalBody707_15

def globalBody707_328 : Prog (BitVec 64) :=
.seq globalBody707_327 globalBody707_49

def globalBody707_329 : Prog (BitVec 64) :=
.seq globalBody707_328 globalBody707_51

def globalBody707_330 : Prog (BitVec 64) :=
.seq globalBody707_329 globalBody707_53

def globalBody707_331 : Prog (BitVec 64) :=
.seq globalBody707_330 globalBody707_1

def globalBody707_332 : Prog (BitVec 64) :=
.seq globalBody707_331 globalBody707_5

def globalBody707_333 : Prog (BitVec 64) :=
.seq globalBody707_332 globalBody707_57

def globalBody707_334 : Prog (BitVec 64) :=
.seq globalBody707_333 globalBody707_9

def globalBody707_335 : Prog (BitVec 64) :=
.seq globalBody707_334 globalBody707_11

def globalBody707_336 : Prog (BitVec 64) :=
.seq globalBody707_335 globalBody707_61

def globalBody707_337 : Prog (BitVec 64) :=
.seq globalBody707_336 globalBody707_15

def globalBody707_338 : Prog (BitVec 64) :=
.seq globalBody707_337 globalBody707_64

def globalBody707_339 : Prog (BitVec 64) :=
.seq globalBody707_338 globalBody707_19

def globalBody707_340 : Prog (BitVec 64) :=
.seq globalBody707_339 globalBody707_11

def globalBody707_341 : Prog (BitVec 64) :=
.seq globalBody707_340 globalBody707_13

def globalBody707_342 : Prog (BitVec 64) :=
.seq globalBody707_341 globalBody707_15

def globalBody707_343 : Prog (BitVec 64) :=
.seq globalBody707_342 globalBody707_70

def globalBody707_344 : Prog (BitVec 64) :=
.seq globalBody707_343 globalBody707_27

def globalBody707_345 : Prog (BitVec 64) :=
.seq globalBody707_344 globalBody707_11

def globalBody707_346 : Prog (BitVec 64) :=
.seq globalBody707_345 globalBody707_22

def globalBody707_347 : Prog (BitVec 64) :=
.seq globalBody707_346 globalBody707_15

def globalBody707_348 : Prog (BitVec 64) :=
.seq globalBody707_347 globalBody707_76

def globalBody707_349 : Prog (BitVec 64) :=
.seq globalBody707_348 globalBody707_35

def globalBody707_350 : Prog (BitVec 64) :=
.seq globalBody707_349 globalBody707_11

def globalBody707_351 : Prog (BitVec 64) :=
.seq globalBody707_350 globalBody707_30

def globalBody707_352 : Prog (BitVec 64) :=
.seq globalBody707_351 globalBody707_15

def globalBody707_353 : Prog (BitVec 64) :=
.seq globalBody707_352 globalBody707_82

def globalBody707_354 : Prog (BitVec 64) :=
.seq globalBody707_353 globalBody707_43

def globalBody707_355 : Prog (BitVec 64) :=
.seq globalBody707_354 globalBody707_11

def globalBody707_356 : Prog (BitVec 64) :=
.seq globalBody707_355 globalBody707_38

def globalBody707_357 : Prog (BitVec 64) :=
.seq globalBody707_356 globalBody707_15

def globalBody707_358 : Prog (BitVec 64) :=
.seq globalBody707_357 globalBody707_88

def globalBody707_359 : Prog (BitVec 64) :=
.seq globalBody707_358 globalBody707_90

def globalBody707_360 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_361 : Prog (BitVec 64) :=
.seq globalBody707_359 globalBody707_360

def globalBody707_362 : Prog (BitVec 64) :=
.seq globalBody707_361 globalBody707_1

def globalBody707_363 : Prog (BitVec 64) :=
.seq globalBody707_362 globalBody707_3

def globalBody707_364 : Prog (BitVec 64) :=
.seq globalBody707_363 globalBody707_5

def globalBody707_365 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_366 : Prog (BitVec 64) :=
.seq globalBody707_364 globalBody707_365

def globalBody707_367 : Prog (BitVec 64) :=
.seq globalBody707_366 globalBody707_9

def globalBody707_368 : Prog (BitVec 64) :=
.seq globalBody707_367 globalBody707_11

def globalBody707_369 : Prog (BitVec 64) :=
.seq globalBody707_368 globalBody707_13

def globalBody707_370 : Prog (BitVec 64) :=
.seq globalBody707_369 globalBody707_15

def globalBody707_371 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_372 : Prog (BitVec 64) :=
.seq globalBody707_370 globalBody707_371

def globalBody707_373 : Prog (BitVec 64) :=
.seq globalBody707_372 globalBody707_19

def globalBody707_374 : Prog (BitVec 64) :=
.seq globalBody707_373 globalBody707_11

def globalBody707_375 : Prog (BitVec 64) :=
.seq globalBody707_374 globalBody707_22

def globalBody707_376 : Prog (BitVec 64) :=
.seq globalBody707_375 globalBody707_15

def globalBody707_377 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_378 : Prog (BitVec 64) :=
.seq globalBody707_376 globalBody707_377

def globalBody707_379 : Prog (BitVec 64) :=
.seq globalBody707_378 globalBody707_27

def globalBody707_380 : Prog (BitVec 64) :=
.seq globalBody707_379 globalBody707_11

def globalBody707_381 : Prog (BitVec 64) :=
.seq globalBody707_380 globalBody707_30

def globalBody707_382 : Prog (BitVec 64) :=
.seq globalBody707_381 globalBody707_15

def globalBody707_383 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_384 : Prog (BitVec 64) :=
.seq globalBody707_382 globalBody707_383

def globalBody707_385 : Prog (BitVec 64) :=
.seq globalBody707_384 globalBody707_35

def globalBody707_386 : Prog (BitVec 64) :=
.seq globalBody707_385 globalBody707_11

def globalBody707_387 : Prog (BitVec 64) :=
.seq globalBody707_386 globalBody707_38

def globalBody707_388 : Prog (BitVec 64) :=
.seq globalBody707_387 globalBody707_15

def globalBody707_389 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "pr"), none)) "mul64x64"
  [Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
    Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "b")]

def globalBody707_390 : Prog (BitVec 64) :=
.seq globalBody707_388 globalBody707_389

def globalBody707_391 : Prog (BitVec 64) :=
.seq globalBody707_390 globalBody707_43

def globalBody707_392 : Prog (BitVec 64) :=
.seq globalBody707_391 globalBody707_11

def globalBody707_393 : Prog (BitVec 64) :=
.seq globalBody707_392 globalBody707_46

def globalBody707_394 : Prog (BitVec 64) :=
.seq globalBody707_393 globalBody707_15

def globalBody707_395 : Prog (BitVec 64) :=
.seq globalBody707_394 globalBody707_49

def globalBody707_396 : Prog (BitVec 64) :=
.seq globalBody707_395 globalBody707_51

def globalBody707_397 : Prog (BitVec 64) :=
.seq globalBody707_396 globalBody707_53

def globalBody707_398 : Prog (BitVec 64) :=
.seq globalBody707_397 globalBody707_1

def globalBody707_399 : Prog (BitVec 64) :=
.seq globalBody707_398 globalBody707_5

def globalBody707_400 : Prog (BitVec 64) :=
.seq globalBody707_399 globalBody707_57

def globalBody707_401 : Prog (BitVec 64) :=
.seq globalBody707_400 globalBody707_9

def globalBody707_402 : Prog (BitVec 64) :=
.seq globalBody707_401 globalBody707_11

def globalBody707_403 : Prog (BitVec 64) :=
.seq globalBody707_402 globalBody707_61

def globalBody707_404 : Prog (BitVec 64) :=
.seq globalBody707_403 globalBody707_15

def globalBody707_405 : Prog (BitVec 64) :=
.seq globalBody707_404 globalBody707_64

def globalBody707_406 : Prog (BitVec 64) :=
.seq globalBody707_405 globalBody707_19

def globalBody707_407 : Prog (BitVec 64) :=
.seq globalBody707_406 globalBody707_11

def globalBody707_408 : Prog (BitVec 64) :=
.seq globalBody707_407 globalBody707_13

def globalBody707_409 : Prog (BitVec 64) :=
.seq globalBody707_408 globalBody707_15

def globalBody707_410 : Prog (BitVec 64) :=
.seq globalBody707_409 globalBody707_70

def globalBody707_411 : Prog (BitVec 64) :=
.seq globalBody707_410 globalBody707_27

def globalBody707_412 : Prog (BitVec 64) :=
.seq globalBody707_411 globalBody707_11

def globalBody707_413 : Prog (BitVec 64) :=
.seq globalBody707_412 globalBody707_22

def globalBody707_414 : Prog (BitVec 64) :=
.seq globalBody707_413 globalBody707_15

def globalBody707_415 : Prog (BitVec 64) :=
.seq globalBody707_414 globalBody707_76

def globalBody707_416 : Prog (BitVec 64) :=
.seq globalBody707_415 globalBody707_35

def globalBody707_417 : Prog (BitVec 64) :=
.seq globalBody707_416 globalBody707_11

def globalBody707_418 : Prog (BitVec 64) :=
.seq globalBody707_417 globalBody707_30

def globalBody707_419 : Prog (BitVec 64) :=
.seq globalBody707_418 globalBody707_15

def globalBody707_420 : Prog (BitVec 64) :=
.seq globalBody707_419 globalBody707_82

def globalBody707_421 : Prog (BitVec 64) :=
.seq globalBody707_420 globalBody707_43

def globalBody707_422 : Prog (BitVec 64) :=
.seq globalBody707_421 globalBody707_11

def globalBody707_423 : Prog (BitVec 64) :=
.seq globalBody707_422 globalBody707_38

def globalBody707_424 : Prog (BitVec 64) :=
.seq globalBody707_423 globalBody707_15

def globalBody707_425 : Prog (BitVec 64) :=
.seq globalBody707_424 globalBody707_88

def globalBody707_426 : Prog (BitVec 64) :=
.seq globalBody707_425 globalBody707_90

def globalBody707_427 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "d"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "d"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "d"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "d"),
      Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "d"),
      Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "d")])

def globalBody707_428 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody707_429 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 6 (Flapjack.Exp.var Flapjack.VarKind.local "d"))
  (Flapjack.Exp.const 1#64)) globalBody707_427 globalBody707_428

def globalBody707_430 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "t0", Flapjack.Exp.var Flapjack.VarKind.local "t1",
      Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.var Flapjack.VarKind.local "t3",
      Flapjack.Exp.var Flapjack.VarKind.local "t4", Flapjack.Exp.var Flapjack.VarKind.local "t5"])

def globalBody707_431 : Prog (BitVec 64) :=
.seq globalBody707_429 globalBody707_430

def globalBody707_432 : Prog (BitVec 64) :=
.decCall ("d") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one, Flapjack.Shape.one]) ("bls_fp_sub_raw") ([Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "t0", Flapjack.Exp.var Flapjack.VarKind.local "t1",
      Flapjack.Exp.var Flapjack.VarKind.local "t2", Flapjack.Exp.var Flapjack.VarKind.local "t3",
      Flapjack.Exp.var Flapjack.VarKind.local "t4", Flapjack.Exp.var Flapjack.VarKind.local "t5"],
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 13402431016077863595#64, Flapjack.Exp.const 2210141511517208575#64,
      Flapjack.Exp.const 7435674573564081700#64, Flapjack.Exp.const 7239337960414712511#64,
      Flapjack.Exp.const 5412103778470702295#64, Flapjack.Exp.const 1873798617647539866#64]]) globalBody707_431

def globalBody707_433 : Prog (BitVec 64) :=
.seq globalBody707_426 globalBody707_432

def globalBody707_434 : Prog (BitVec 64) :=
.dec ("s2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody707_433

def globalBody707_435 : Prog (BitVec 64) :=
.dec ("s") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody707_434

def globalBody707_436 : Prog (BitVec 64) :=
.dec ("pr") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody707_435

def globalBody707_437 : Prog (BitVec 64) :=
.dec ("m") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody707_436

def globalBody707_438 : Prog (BitVec 64) :=
.dec ("c") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody707_437

def globalBody707_439 : Prog (BitVec 64) :=
.dec ("t6") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody707_438

def globalBody707_440 : Prog (BitVec 64) :=
.dec ("t5") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody707_439

def globalBody707_441 : Prog (BitVec 64) :=
.dec ("t4") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody707_440

def globalBody707_442 : Prog (BitVec 64) :=
.dec ("t3") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody707_441

def globalBody707_443 : Prog (BitVec 64) :=
.dec ("t2") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody707_442

def globalBody707_444 : Prog (BitVec 64) :=
.dec ("t1") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody707_443

def globalBody707_445 : Prog (BitVec 64) :=
.dec ("t0") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody707_444

def globalData707 : Decl (BitVec 64) :=
.function { name := "bls_fp_mul", inline := false, exported := false, params := [("a",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one]),
  ("b",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := globalBody707_445, returnShape := (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) }
def globalOutput707 := Pancake.PanLang.declToHOL globalData707
end InitECandidate.Proofs.FrontendStages.Declarations
