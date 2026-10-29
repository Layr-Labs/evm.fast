import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data563
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate543
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody563_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "s") (Flapjack.Exp.const 84#64)

def globalBody563_1 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 114#64)

def globalBody563_2 : Prog (BitVec 64) :=
.seq globalBody563_0 globalBody563_1

def globalBody563_3 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 2#64])
  (Flapjack.Exp.const 97#64)

def globalBody563_4 : Prog (BitVec 64) :=
.seq globalBody563_2 globalBody563_3

def globalBody563_5 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 3#64])
  (Flapjack.Exp.const 110#64)

def globalBody563_6 : Prog (BitVec 64) :=
.seq globalBody563_4 globalBody563_5

def globalBody563_7 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 4#64])
  (Flapjack.Exp.const 115#64)

def globalBody563_8 : Prog (BitVec 64) :=
.seq globalBody563_6 globalBody563_7

def globalBody563_9 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 5#64])
  (Flapjack.Exp.const 102#64)

def globalBody563_10 : Prog (BitVec 64) :=
.seq globalBody563_8 globalBody563_9

def globalBody563_11 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 6#64])
  (Flapjack.Exp.const 101#64)

def globalBody563_12 : Prog (BitVec 64) :=
.seq globalBody563_10 globalBody563_11

def globalBody563_13 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 114#64)

def globalBody563_14 : Prog (BitVec 64) :=
.seq globalBody563_12 globalBody563_13

def globalBody563_15 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 40#64)

def globalBody563_16 : Prog (BitVec 64) :=
.seq globalBody563_14 globalBody563_15

def globalBody563_17 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 9#64])
  (Flapjack.Exp.const 97#64)

def globalBody563_18 : Prog (BitVec 64) :=
.seq globalBody563_16 globalBody563_17

def globalBody563_19 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 10#64])
  (Flapjack.Exp.const 100#64)

def globalBody563_20 : Prog (BitVec 64) :=
.seq globalBody563_18 globalBody563_19

def globalBody563_21 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 11#64])
  (Flapjack.Exp.const 100#64)

def globalBody563_22 : Prog (BitVec 64) :=
.seq globalBody563_20 globalBody563_21

def globalBody563_23 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 12#64])
  (Flapjack.Exp.const 114#64)

def globalBody563_24 : Prog (BitVec 64) :=
.seq globalBody563_22 globalBody563_23

def globalBody563_25 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 13#64])
  (Flapjack.Exp.const 101#64)

def globalBody563_26 : Prog (BitVec 64) :=
.seq globalBody563_24 globalBody563_25

def globalBody563_27 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 14#64])
  (Flapjack.Exp.const 115#64)

def globalBody563_28 : Prog (BitVec 64) :=
.seq globalBody563_26 globalBody563_27

def globalBody563_29 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 15#64])
  (Flapjack.Exp.const 115#64)

def globalBody563_30 : Prog (BitVec 64) :=
.seq globalBody563_28 globalBody563_29

def globalBody563_31 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 44#64)

def globalBody563_32 : Prog (BitVec 64) :=
.seq globalBody563_30 globalBody563_31

def globalBody563_33 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 17#64])
  (Flapjack.Exp.const 97#64)

def globalBody563_34 : Prog (BitVec 64) :=
.seq globalBody563_32 globalBody563_33

def globalBody563_35 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 18#64])
  (Flapjack.Exp.const 100#64)

def globalBody563_36 : Prog (BitVec 64) :=
.seq globalBody563_34 globalBody563_35

def globalBody563_37 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 19#64])
  (Flapjack.Exp.const 100#64)

def globalBody563_38 : Prog (BitVec 64) :=
.seq globalBody563_36 globalBody563_37

def globalBody563_39 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 20#64])
  (Flapjack.Exp.const 114#64)

def globalBody563_40 : Prog (BitVec 64) :=
.seq globalBody563_38 globalBody563_39

def globalBody563_41 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 21#64])
  (Flapjack.Exp.const 101#64)

def globalBody563_42 : Prog (BitVec 64) :=
.seq globalBody563_40 globalBody563_41

def globalBody563_43 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 22#64])
  (Flapjack.Exp.const 115#64)

def globalBody563_44 : Prog (BitVec 64) :=
.seq globalBody563_42 globalBody563_43

def globalBody563_45 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 23#64])
  (Flapjack.Exp.const 115#64)

def globalBody563_46 : Prog (BitVec 64) :=
.seq globalBody563_44 globalBody563_45

def globalBody563_47 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 44#64)

def globalBody563_48 : Prog (BitVec 64) :=
.seq globalBody563_46 globalBody563_47

def globalBody563_49 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 25#64])
  (Flapjack.Exp.const 117#64)

def globalBody563_50 : Prog (BitVec 64) :=
.seq globalBody563_48 globalBody563_49

def globalBody563_51 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 26#64])
  (Flapjack.Exp.const 105#64)

def globalBody563_52 : Prog (BitVec 64) :=
.seq globalBody563_50 globalBody563_51

def globalBody563_53 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 27#64])
  (Flapjack.Exp.const 110#64)

def globalBody563_54 : Prog (BitVec 64) :=
.seq globalBody563_52 globalBody563_53

def globalBody563_55 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 28#64])
  (Flapjack.Exp.const 116#64)

def globalBody563_56 : Prog (BitVec 64) :=
.seq globalBody563_54 globalBody563_55

def globalBody563_57 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 29#64])
  (Flapjack.Exp.const 50#64)

def globalBody563_58 : Prog (BitVec 64) :=
.seq globalBody563_56 globalBody563_57

def globalBody563_59 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 30#64])
  (Flapjack.Exp.const 53#64)

def globalBody563_60 : Prog (BitVec 64) :=
.seq globalBody563_58 globalBody563_59

def globalBody563_61 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 31#64])
  (Flapjack.Exp.const 54#64)

def globalBody563_62 : Prog (BitVec 64) :=
.seq globalBody563_60 globalBody563_61

def globalBody563_63 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 41#64)

def globalBody563_64 : Prog (BitVec 64) :=
.seq globalBody563_62 globalBody563_63

def globalBody563_65 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody563_66 : Prog (BitVec 64) :=
.seq globalBody563_64 globalBody563_65

def globalBody563_67 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 296#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody563_68 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody563_67

def globalBody563_69 : Prog (BitVec 64) :=
.seq globalBody563_66 globalBody563_68

def globalBody563_70 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.const 33#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 296#64])]

def globalBody563_71 : Prog (BitVec 64) :=
.seq globalBody563_69 globalBody563_70

def globalBody563_72 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 304#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody563_73 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody563_72

def globalBody563_74 : Prog (BitVec 64) :=
.seq globalBody563_71 globalBody563_73

def globalBody563_75 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 304#64]),
      Flapjack.Exp.var Flapjack.VarKind.local "i"])
  (Flapjack.Exp.const 255#64)

def globalBody563_76 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody563_77 : Prog (BitVec 64) :=
.seq globalBody563_75 globalBody563_76

def globalBody563_78 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 20#64)) globalBody563_77

def globalBody563_79 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 304#64]),
      Flapjack.Exp.const 19#64])
  (Flapjack.Exp.const 254#64)

def globalBody563_80 : Prog (BitVec 64) :=
.seq globalBody563_78 globalBody563_79

def globalBody563_81 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 312#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody563_82 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody563_81

def globalBody563_83 : Prog (BitVec 64) :=
.seq globalBody563_80 globalBody563_82

def globalBody563_84 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 312#64]),
    Flapjack.Exp.const 24#64]

def globalBody563_85 : Prog (BitVec 64) :=
.seq globalBody563_83 globalBody563_84

def globalBody563_86 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 264#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody563_87 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 8#64]) globalBody563_86

def globalBody563_88 : Prog (BitVec 64) :=
.seq globalBody563_85 globalBody563_87

def globalBody563_89 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 264#64]),
    Flapjack.Exp.const 8#64]

def globalBody563_90 : Prog (BitVec 64) :=
.seq globalBody563_88 globalBody563_89

def globalBody563_91 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 280#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody563_92 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody563_91

def globalBody563_93 : Prog (BitVec 64) :=
.seq globalBody563_90 globalBody563_92

def globalBody563_94 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 272#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "")

def globalBody563_95 : Prog (BitVec 64) :=
.decCall ("") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) globalBody563_94

def globalBody563_96 : Prog (BitVec 64) :=
.seq globalBody563_93 globalBody563_95

def globalBody563_97 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody563_98 : Prog (BitVec 64) :=
.seq globalBody563_96 globalBody563_97

def globalBody563_99 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody563_98

def globalBody563_100 : Prog (BitVec 64) :=
.seq globalBody563_74 globalBody563_99

def globalBody563_101 : Prog (BitVec 64) :=
.decCall ("s") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 40#64]) globalBody563_100

def globalBody563_102 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody563_101

def globalData563 : Decl (BitVec 64) :=
.function { name := "evm_init", inline := false, exported := false, params := [], body := globalBody563_102, returnShape := (Flapjack.Shape.one) }
def globalOutput563 := Pancake.PanLang.declToHOL globalData563
end InitECandidate.Proofs.FrontendStages.Declarations
