import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify195
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body211_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "ch",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 0#64],
    Flapjack.Exp.const 32#64]

def body211_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_bytes_vector"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 32#64],
    Flapjack.Exp.const 20#64,
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 32#64]]

def body211_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 64#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 52#64],
    Flapjack.Exp.const 32#64]

def body211_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 84#64],
    Flapjack.Exp.const 32#64]

def body211_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_bytes_vector"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 116#64],
    Flapjack.Exp.const 256#64,
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 128#64]]

def body211_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 160#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 372#64],
    Flapjack.Exp.const 32#64]

def body211_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_u64_at"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 404#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 192#64]]

def body211_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_u64_at"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 412#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 224#64]]

def body211_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_u64_at"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 420#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 256#64]]

def body211_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_u64_at"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 428#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 288#64]]

def body211_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_bytes_list"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 16#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 24#64]),
    Flapjack.Exp.const 1#64,
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 320#64]]

def body211_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 352#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 440#64],
    Flapjack.Exp.const 32#64]

def body211_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 384#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 472#64],
    Flapjack.Exp.const 32#64]

def body211_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_pbytes"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "txs",
          Flapjack.Exp.panOp Flapjack.PanOp.mul
            [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64]]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "txs",
          Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 16#64],
          Flapjack.Exp.const 8#64]),
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "roots",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]]]

def body211_14 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body211_15 : Prog (BitVec 64) :=
.seq body211_13 body211_14

def body211_16 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "ntx")) body211_15

def body211_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_plist_chunks"
  [Flapjack.Exp.var Flapjack.VarKind.local "roots", Flapjack.Exp.var Flapjack.VarKind.local "ntx",
    Flapjack.Exp.var Flapjack.VarKind.local "ntx",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 416#64]]

def body211_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "m2"]

def body211_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "roots"), none)) "alloc"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "nwd", Flapjack.Exp.const 32#64],
        Flapjack.Exp.const 32#64]]

def body211_20 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i" (Flapjack.Exp.const 0#64)

def body211_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_withdrawal"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "wd",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 44#64]],
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "roots",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]]]

def body211_22 : Prog (BitVec 64) :=
.seq body211_21 body211_14

def body211_23 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "nwd")) body211_22

def body211_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_plist_chunks"
  [Flapjack.Exp.var Flapjack.VarKind.local "roots", Flapjack.Exp.var Flapjack.VarKind.local "nwd",
    Flapjack.Exp.var Flapjack.VarKind.local "nwd",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 448#64]]

def body211_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_u64_at"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 512#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 480#64]]

def body211_26 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_u64_at"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 520#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 512#64]]

def body211_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_pbytes"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 64#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 72#64]),
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 544#64]]

def body211_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_u64_at"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "raw", Flapjack.Exp.const 532#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 576#64]]

def body211_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htr_pcontainer"
  [Flapjack.Exp.var Flapjack.VarKind.local "ch", Flapjack.Exp.const 19#64,
    Flapjack.Exp.var Flapjack.VarKind.local "out"]

def body211_30 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body211_31 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body211_32 : Prog (BitVec 64) :=
.seq body211_30 body211_31

def body211_33 : Prog (BitVec 64) :=
.seq body211_29 body211_32

def body211_34 : Prog (BitVec 64) :=
.seq body211_28 body211_33

def body211_35 : Prog (BitVec 64) :=
.seq body211_27 body211_34

def body211_36 : Prog (BitVec 64) :=
.seq body211_26 body211_35

def body211_37 : Prog (BitVec 64) :=
.seq body211_25 body211_36

def body211_38 : Prog (BitVec 64) :=
.seq body211_18 body211_37

def body211_39 : Prog (BitVec 64) :=
.seq body211_24 body211_38

def body211_40 : Prog (BitVec 64) :=
.seq body211_23 body211_39

def body211_41 : Prog (BitVec 64) :=
.seq body211_20 body211_40

def body211_42 : Prog (BitVec 64) :=
.seq body211_19 body211_41

def body211_43 : Prog (BitVec 64) :=
.dec ("nwd") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 56#64])) body211_42

def body211_44 : Prog (BitVec 64) :=
.dec ("wd") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 48#64])) body211_43

def body211_45 : Prog (BitVec 64) :=
.seq body211_18 body211_44

def body211_46 : Prog (BitVec 64) :=
.seq body211_17 body211_45

def body211_47 : Prog (BitVec 64) :=
.seq body211_16 body211_46

def body211_48 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body211_47

def body211_49 : Prog (BitVec 64) :=
.decCall ("roots") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ntx", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 32#64]]) body211_48

def body211_50 : Prog (BitVec 64) :=
.decCall ("m2") (Flapjack.Shape.one) ("heap_mark") ([]) body211_49

def body211_51 : Prog (BitVec 64) :=
.dec ("ntx") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 40#64])) body211_50

def body211_52 : Prog (BitVec 64) :=
.dec ("txs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 32#64])) body211_51

def body211_53 : Prog (BitVec 64) :=
.seq body211_12 body211_52

def body211_54 : Prog (BitVec 64) :=
.seq body211_11 body211_53

def body211_55 : Prog (BitVec 64) :=
.seq body211_10 body211_54

def body211_56 : Prog (BitVec 64) :=
.seq body211_9 body211_55

def body211_57 : Prog (BitVec 64) :=
.seq body211_8 body211_56

def body211_58 : Prog (BitVec 64) :=
.seq body211_7 body211_57

def body211_59 : Prog (BitVec 64) :=
.seq body211_6 body211_58

def body211_60 : Prog (BitVec 64) :=
.seq body211_5 body211_59

def body211_61 : Prog (BitVec 64) :=
.seq body211_4 body211_60

def body211_62 : Prog (BitVec 64) :=
.seq body211_3 body211_61

def body211_63 : Prog (BitVec 64) :=
.seq body211_2 body211_62

def body211_64 : Prog (BitVec 64) :=
.seq body211_1 body211_63

def body211_65 : Prog (BitVec 64) :=
.seq body211_0 body211_64

def body211_66 : Prog (BitVec 64) :=
.decCall ("ch") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 19#64, Flapjack.Exp.const 32#64]]) body211_65

def body211_67 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body211_66

def body211_68 : Prog (BitVec 64) :=
.dec ("raw") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 0#64])) body211_67

def body211_69 : Prog (BitVec 64) :=
.seq body211_0 body211_1

def body211_70 : Prog (BitVec 64) :=
.seq body211_69 body211_2

def body211_71 : Prog (BitVec 64) :=
.seq body211_70 body211_3

def body211_72 : Prog (BitVec 64) :=
.seq body211_71 body211_4

def body211_73 : Prog (BitVec 64) :=
.seq body211_72 body211_5

def body211_74 : Prog (BitVec 64) :=
.seq body211_73 body211_6

def body211_75 : Prog (BitVec 64) :=
.seq body211_74 body211_7

def body211_76 : Prog (BitVec 64) :=
.seq body211_75 body211_8

def body211_77 : Prog (BitVec 64) :=
.seq body211_76 body211_9

def body211_78 : Prog (BitVec 64) :=
.seq body211_77 body211_10

def body211_79 : Prog (BitVec 64) :=
.seq body211_78 body211_11

def body211_80 : Prog (BitVec 64) :=
.seq body211_79 body211_12

def body211_81 : Prog (BitVec 64) :=
.seq body211_16 body211_17

def body211_82 : Prog (BitVec 64) :=
.seq body211_81 body211_18

def body211_83 : Prog (BitVec 64) :=
.seq body211_19 body211_20

def body211_84 : Prog (BitVec 64) :=
.seq body211_83 body211_23

def body211_85 : Prog (BitVec 64) :=
.seq body211_84 body211_24

def body211_86 : Prog (BitVec 64) :=
.seq body211_85 body211_18

def body211_87 : Prog (BitVec 64) :=
.seq body211_86 body211_25

def body211_88 : Prog (BitVec 64) :=
.seq body211_87 body211_26

def body211_89 : Prog (BitVec 64) :=
.seq body211_88 body211_27

def body211_90 : Prog (BitVec 64) :=
.seq body211_89 body211_28

def body211_91 : Prog (BitVec 64) :=
.seq body211_90 body211_29

def body211_92 : Prog (BitVec 64) :=
.seq body211_91 body211_30

def body211_93 : Prog (BitVec 64) :=
.seq body211_92 body211_31

def body211_94 : Prog (BitVec 64) :=
.dec ("nwd") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 56#64])) body211_93

def body211_95 : Prog (BitVec 64) :=
.dec ("wd") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 48#64])) body211_94

def body211_96 : Prog (BitVec 64) :=
.seq body211_82 body211_95

def body211_97 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body211_96

def body211_98 : Prog (BitVec 64) :=
.decCall ("roots") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "ntx", Flapjack.Exp.const 32#64],
      Flapjack.Exp.const 32#64]]) body211_97

def body211_99 : Prog (BitVec 64) :=
.decCall ("m2") (Flapjack.Shape.one) ("heap_mark") ([]) body211_98

def body211_100 : Prog (BitVec 64) :=
.dec ("ntx") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 40#64])) body211_99

def body211_101 : Prog (BitVec 64) :=
.dec ("txs") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 32#64])) body211_100

def body211_102 : Prog (BitVec 64) :=
.seq body211_80 body211_101

def body211_103 : Prog (BitVec 64) :=
.decCall ("ch") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 19#64, Flapjack.Exp.const 32#64]]) body211_102

def body211_104 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body211_103

def body211_105 : Prog (BitVec 64) :=
.dec ("raw") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pl", Flapjack.Exp.const 0#64])) body211_104

def originalData211 : Decl (BitVec 64) :=
.function { name := "htr_payload", inline := false, exported := false, params := [("pl", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body211_68, returnShape := (Flapjack.Shape.one) }
def simplifiedData211 : Decl (BitVec 64) :=
.function { name := "htr_payload", inline := false, exported := false, params := [("pl", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body211_105, returnShape := (Flapjack.Shape.one) }
def original211 := Pancake.PanLang.declToHOL originalData211
def simplified211 := Pancake.PanLang.declToHOL simplifiedData211
end InitECandidate.Proofs.FrontendStages.Declarations
