import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify339
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body355_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "ws"), none)) "alloc" [Flapjack.Exp.const 40#64]

def body355_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ws", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "nodedb")

def body355_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ws", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "state_root")

def body355_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ws", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "codedb")

def body355_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ws", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "root")

def body355_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ws", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body355_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "bs"), none)) "alloc" [Flapjack.Exp.const 80#64]

def body355_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "ws")

def body355_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 20#64, Flapjack.Exp.const 256#64]

def body355_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body355_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body355_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 52#64, Flapjack.Exp.const 256#64]

def body355_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body355_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 20#64, Flapjack.Exp.const 64#64]

def body355_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body355_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 52#64, Flapjack.Exp.const 64#64]

def body355_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body355_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 32#64, Flapjack.Exp.const 64#64]

def body355_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body355_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.const 0#64)

def body355_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.const 0#64)

def body355_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body355_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "sk_buf"), none)) "alloc" [Flapjack.Exp.const 64#64]

def body355_23 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "journal_cap" (Flapjack.Exp.const 524288#64)

def body355_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "journal"), none)) "alloc"
  [Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.var Flapjack.VarKind.global "journal_cap", Flapjack.Exp.const 32#64]]

def body355_25 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "journal_n" (Flapjack.Exp.const 0#64)

def body355_26 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "ts" (Flapjack.Exp.const 0#64)

def body355_27 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body355_28 : Prog (BitVec 64) :=
.seq body355_26 body355_27

def body355_29 : Prog (BitVec 64) :=
.seq body355_25 body355_28

def body355_30 : Prog (BitVec 64) :=
.seq body355_24 body355_29

def body355_31 : Prog (BitVec 64) :=
.seq body355_23 body355_30

def body355_32 : Prog (BitVec 64) :=
.seq body355_22 body355_31

def body355_33 : Prog (BitVec 64) :=
.seq body355_21 body355_32

def body355_34 : Prog (BitVec 64) :=
.seq body355_8 body355_33

def body355_35 : Prog (BitVec 64) :=
.seq body355_20 body355_34

def body355_36 : Prog (BitVec 64) :=
.seq body355_19 body355_35

def body355_37 : Prog (BitVec 64) :=
.seq body355_18 body355_36

def body355_38 : Prog (BitVec 64) :=
.seq body355_17 body355_37

def body355_39 : Prog (BitVec 64) :=
.seq body355_16 body355_38

def body355_40 : Prog (BitVec 64) :=
.seq body355_15 body355_39

def body355_41 : Prog (BitVec 64) :=
.seq body355_14 body355_40

def body355_42 : Prog (BitVec 64) :=
.seq body355_13 body355_41

def body355_43 : Prog (BitVec 64) :=
.seq body355_12 body355_42

def body355_44 : Prog (BitVec 64) :=
.seq body355_11 body355_43

def body355_45 : Prog (BitVec 64) :=
.seq body355_10 body355_44

def body355_46 : Prog (BitVec 64) :=
.seq body355_8 body355_45

def body355_47 : Prog (BitVec 64) :=
.seq body355_9 body355_46

def body355_48 : Prog (BitVec 64) :=
.seq body355_8 body355_47

def body355_49 : Prog (BitVec 64) :=
.seq body355_7 body355_48

def body355_50 : Prog (BitVec 64) :=
.seq body355_6 body355_49

def body355_51 : Prog (BitVec 64) :=
.seq body355_5 body355_50

def body355_52 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 32#64, Flapjack.Exp.const 64#64]) body355_51

def body355_53 : Prog (BitVec 64) :=
.seq body355_4 body355_52

def body355_54 : Prog (BitVec 64) :=
.decCall ("root") (Flapjack.Shape.one) ("decode_witness_to_mpt") ([Flapjack.Exp.var Flapjack.VarKind.local "nodedb", Flapjack.Exp.var Flapjack.VarKind.local "state_root"]) body355_53

def body355_55 : Prog (BitVec 64) :=
.seq body355_3 body355_54

def body355_56 : Prog (BitVec 64) :=
.seq body355_2 body355_55

def body355_57 : Prog (BitVec 64) :=
.seq body355_1 body355_56

def body355_58 : Prog (BitVec 64) :=
.seq body355_0 body355_57

def body355_59 : Prog (BitVec 64) :=
.seq body355_0 body355_1

def body355_60 : Prog (BitVec 64) :=
.seq body355_59 body355_2

def body355_61 : Prog (BitVec 64) :=
.seq body355_60 body355_3

def body355_62 : Prog (BitVec 64) :=
.seq body355_5 body355_6

def body355_63 : Prog (BitVec 64) :=
.seq body355_62 body355_7

def body355_64 : Prog (BitVec 64) :=
.seq body355_63 body355_8

def body355_65 : Prog (BitVec 64) :=
.seq body355_64 body355_9

def body355_66 : Prog (BitVec 64) :=
.seq body355_65 body355_8

def body355_67 : Prog (BitVec 64) :=
.seq body355_66 body355_10

def body355_68 : Prog (BitVec 64) :=
.seq body355_67 body355_11

def body355_69 : Prog (BitVec 64) :=
.seq body355_68 body355_12

def body355_70 : Prog (BitVec 64) :=
.seq body355_69 body355_13

def body355_71 : Prog (BitVec 64) :=
.seq body355_70 body355_14

def body355_72 : Prog (BitVec 64) :=
.seq body355_71 body355_15

def body355_73 : Prog (BitVec 64) :=
.seq body355_72 body355_16

def body355_74 : Prog (BitVec 64) :=
.seq body355_73 body355_17

def body355_75 : Prog (BitVec 64) :=
.seq body355_74 body355_18

def body355_76 : Prog (BitVec 64) :=
.seq body355_75 body355_19

def body355_77 : Prog (BitVec 64) :=
.seq body355_76 body355_20

def body355_78 : Prog (BitVec 64) :=
.seq body355_77 body355_8

def body355_79 : Prog (BitVec 64) :=
.seq body355_78 body355_21

def body355_80 : Prog (BitVec 64) :=
.seq body355_79 body355_22

def body355_81 : Prog (BitVec 64) :=
.seq body355_80 body355_23

def body355_82 : Prog (BitVec 64) :=
.seq body355_81 body355_24

def body355_83 : Prog (BitVec 64) :=
.seq body355_82 body355_25

def body355_84 : Prog (BitVec 64) :=
.seq body355_83 body355_26

def body355_85 : Prog (BitVec 64) :=
.seq body355_84 body355_27

def body355_86 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 32#64, Flapjack.Exp.const 64#64]) body355_85

def body355_87 : Prog (BitVec 64) :=
.seq body355_4 body355_86

def body355_88 : Prog (BitVec 64) :=
.decCall ("root") (Flapjack.Shape.one) ("decode_witness_to_mpt") ([Flapjack.Exp.var Flapjack.VarKind.local "nodedb", Flapjack.Exp.var Flapjack.VarKind.local "state_root"]) body355_87

def body355_89 : Prog (BitVec 64) :=
.seq body355_61 body355_88

def originalData355 : Decl (BitVec 64) :=
.function { name := "state_init", inline := false, exported := false, params := [("nodedb", Flapjack.Shape.one), ("state_root", Flapjack.Shape.one), ("codedb", Flapjack.Shape.one)], body := body355_58, returnShape := (Flapjack.Shape.one) }
def simplifiedData355 : Decl (BitVec 64) :=
.function { name := "state_init", inline := false, exported := false, params := [("nodedb", Flapjack.Shape.one), ("state_root", Flapjack.Shape.one), ("codedb", Flapjack.Shape.one)], body := body355_89, returnShape := (Flapjack.Shape.one) }
def original355 := Pancake.PanLang.declToHOL originalData355
def simplified355 := Pancake.PanLang.declToHOL simplifiedData355
end InitECandidate.Proofs.FrontendStages.Declarations
