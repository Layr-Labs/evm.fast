import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data567
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate547
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody567_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "s") (Flapjack.Exp.const 84#64)

def globalBody567_1 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 114#64)

def globalBody567_2 : Prog (BitVec 64) :=
.seq globalBody567_0 globalBody567_1

def globalBody567_3 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 2#64])
  (Flapjack.Exp.const 97#64)

def globalBody567_4 : Prog (BitVec 64) :=
.seq globalBody567_2 globalBody567_3

def globalBody567_5 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 3#64])
  (Flapjack.Exp.const 110#64)

def globalBody567_6 : Prog (BitVec 64) :=
.seq globalBody567_4 globalBody567_5

def globalBody567_7 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 4#64])
  (Flapjack.Exp.const 115#64)

def globalBody567_8 : Prog (BitVec 64) :=
.seq globalBody567_6 globalBody567_7

def globalBody567_9 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 5#64])
  (Flapjack.Exp.const 102#64)

def globalBody567_10 : Prog (BitVec 64) :=
.seq globalBody567_8 globalBody567_9

def globalBody567_11 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 6#64])
  (Flapjack.Exp.const 101#64)

def globalBody567_12 : Prog (BitVec 64) :=
.seq globalBody567_10 globalBody567_11

def globalBody567_13 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 114#64)

def globalBody567_14 : Prog (BitVec 64) :=
.seq globalBody567_12 globalBody567_13

def globalBody567_15 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 40#64)

def globalBody567_16 : Prog (BitVec 64) :=
.seq globalBody567_14 globalBody567_15

def globalBody567_17 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 9#64])
  (Flapjack.Exp.const 97#64)

def globalBody567_18 : Prog (BitVec 64) :=
.seq globalBody567_16 globalBody567_17

def globalBody567_19 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 10#64])
  (Flapjack.Exp.const 100#64)

def globalBody567_20 : Prog (BitVec 64) :=
.seq globalBody567_18 globalBody567_19

def globalBody567_21 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 11#64])
  (Flapjack.Exp.const 100#64)

def globalBody567_22 : Prog (BitVec 64) :=
.seq globalBody567_20 globalBody567_21

def globalBody567_23 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 12#64])
  (Flapjack.Exp.const 114#64)

def globalBody567_24 : Prog (BitVec 64) :=
.seq globalBody567_22 globalBody567_23

def globalBody567_25 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 13#64])
  (Flapjack.Exp.const 101#64)

def globalBody567_26 : Prog (BitVec 64) :=
.seq globalBody567_24 globalBody567_25

def globalBody567_27 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 14#64])
  (Flapjack.Exp.const 115#64)

def globalBody567_28 : Prog (BitVec 64) :=
.seq globalBody567_26 globalBody567_27

def globalBody567_29 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 15#64])
  (Flapjack.Exp.const 115#64)

def globalBody567_30 : Prog (BitVec 64) :=
.seq globalBody567_28 globalBody567_29

def globalBody567_31 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 44#64)

def globalBody567_32 : Prog (BitVec 64) :=
.seq globalBody567_30 globalBody567_31

def globalBody567_33 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 17#64])
  (Flapjack.Exp.const 97#64)

def globalBody567_34 : Prog (BitVec 64) :=
.seq globalBody567_32 globalBody567_33

def globalBody567_35 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 18#64])
  (Flapjack.Exp.const 100#64)

def globalBody567_36 : Prog (BitVec 64) :=
.seq globalBody567_34 globalBody567_35

def globalBody567_37 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 19#64])
  (Flapjack.Exp.const 100#64)

def globalBody567_38 : Prog (BitVec 64) :=
.seq globalBody567_36 globalBody567_37

def globalBody567_39 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 20#64])
  (Flapjack.Exp.const 114#64)

def globalBody567_40 : Prog (BitVec 64) :=
.seq globalBody567_38 globalBody567_39

def globalBody567_41 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 21#64])
  (Flapjack.Exp.const 101#64)

def globalBody567_42 : Prog (BitVec 64) :=
.seq globalBody567_40 globalBody567_41

def globalBody567_43 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 22#64])
  (Flapjack.Exp.const 115#64)

def globalBody567_44 : Prog (BitVec 64) :=
.seq globalBody567_42 globalBody567_43

def globalBody567_45 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 23#64])
  (Flapjack.Exp.const 115#64)

def globalBody567_46 : Prog (BitVec 64) :=
.seq globalBody567_44 globalBody567_45

def globalBody567_47 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 44#64)

def globalBody567_48 : Prog (BitVec 64) :=
.seq globalBody567_46 globalBody567_47

def globalBody567_49 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 25#64])
  (Flapjack.Exp.const 117#64)

def globalBody567_50 : Prog (BitVec 64) :=
.seq globalBody567_48 globalBody567_49

def globalBody567_51 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 26#64])
  (Flapjack.Exp.const 105#64)

def globalBody567_52 : Prog (BitVec 64) :=
.seq globalBody567_50 globalBody567_51

def globalBody567_53 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 27#64])
  (Flapjack.Exp.const 110#64)

def globalBody567_54 : Prog (BitVec 64) :=
.seq globalBody567_52 globalBody567_53

def globalBody567_55 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 28#64])
  (Flapjack.Exp.const 116#64)

def globalBody567_56 : Prog (BitVec 64) :=
.seq globalBody567_54 globalBody567_55

def globalBody567_57 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 29#64])
  (Flapjack.Exp.const 50#64)

def globalBody567_58 : Prog (BitVec 64) :=
.seq globalBody567_56 globalBody567_57

def globalBody567_59 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 30#64])
  (Flapjack.Exp.const 53#64)

def globalBody567_60 : Prog (BitVec 64) :=
.seq globalBody567_58 globalBody567_59

def globalBody567_61 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 31#64])
  (Flapjack.Exp.const 54#64)

def globalBody567_62 : Prog (BitVec 64) :=
.seq globalBody567_60 globalBody567_61

def globalBody567_63 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 41#64)

def globalBody567_64 : Prog (BitVec 64) :=
.seq globalBody567_62 globalBody567_63

def globalBody567_65 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody567_66 : Prog (BitVec 64) :=
.seq globalBody567_64 globalBody567_65

def globalBody567_67 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 296#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody567_68 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody567_67

def globalBody567_69 : Prog (BitVec 64) :=
.seq globalBody567_66 globalBody567_68

def globalBody567_70 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 33#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 296#64])]

def globalBody567_71 : Prog (BitVec 64) :=
.seq globalBody567_69 globalBody567_70

def globalBody567_72 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 304#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody567_73 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody567_72

def globalBody567_74 : Prog (BitVec 64) :=
.seq globalBody567_71 globalBody567_73

def globalBody567_75 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 304#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "i"])
  (Flapjack.Exp.const 255#64)

def globalBody567_76 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody567_77 : Prog (BitVec 64) :=
.seq globalBody567_75 globalBody567_76

def globalBody567_78 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 20#64)) globalBody567_77

def globalBody567_79 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 304#64]),
      Flapjack.Exp.const 19#64])
  (Flapjack.Exp.const 254#64)

def globalBody567_80 : Prog (BitVec 64) :=
.seq globalBody567_78 globalBody567_79

def globalBody567_81 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 312#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody567_82 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody567_81

def globalBody567_83 : Prog (BitVec 64) :=
.seq globalBody567_80 globalBody567_82

def globalBody567_84 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 312#64]),
    Flapjack.Exp.const 24#64]

def globalBody567_85 : Prog (BitVec 64) :=
.seq globalBody567_83 globalBody567_84

def globalBody567_86 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 264#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody567_87 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 8#64]) globalBody567_86

def globalBody567_88 : Prog (BitVec 64) :=
.seq globalBody567_85 globalBody567_87

def globalBody567_89 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 264#64]),
    Flapjack.Exp.const 8#64]

def globalBody567_90 : Prog (BitVec 64) :=
.seq globalBody567_88 globalBody567_89

def globalBody567_91 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 280#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody567_92 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody567_91

def globalBody567_93 : Prog (BitVec 64) :=
.seq globalBody567_90 globalBody567_92

def globalBody567_94 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 272#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody567_95 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) globalBody567_94

def globalBody567_96 : Prog (BitVec 64) :=
.seq globalBody567_93 globalBody567_95

def globalBody567_97 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody567_98 : Prog (BitVec 64) :=
.seq globalBody567_96 globalBody567_97

def globalBody567_99 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody567_98

def globalBody567_100 : Prog (BitVec 64) :=
.seq globalBody567_74 globalBody567_99

def globalBody567_101 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 40#64]) globalBody567_100

def globalBody567_102 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody567_101

def globalData567 : Decl (BitVec 64) :=
.function { name := "evm_init", inline := false, exported := false, params := [], body := globalBody567_102, returnShape := (Flapjack.Shape.one) }
def globalOutput567 := Pancake.PanLang.declToHOL globalData567
end InitECandidate.Proofs.FrontendStages.Declarations
