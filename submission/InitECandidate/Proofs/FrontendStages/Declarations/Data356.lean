import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify340
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body356_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "ts"), none)) "alloc" [Flapjack.Exp.const 72#64]

def body356_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "bs")

def body356_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body356_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 20#64, Flapjack.Exp.const 64#64]

def body356_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body356_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 52#64, Flapjack.Exp.const 64#64]

def body356_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body356_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 20#64, Flapjack.Exp.const 16#64]

def body356_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body356_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 52#64, Flapjack.Exp.const 16#64]

def body356_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body356_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 32#64, Flapjack.Exp.const 16#64]

def body356_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body356_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body356_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body356_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.global "journal_n" (Flapjack.Exp.const 0#64)

def body356_16 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body356_17 : Prog (BitVec 64) :=
.seq body356_15 body356_16

def body356_18 : Prog (BitVec 64) :=
.seq body356_14 body356_17

def body356_19 : Prog (BitVec 64) :=
.seq body356_9 body356_18

def body356_20 : Prog (BitVec 64) :=
.seq body356_13 body356_19

def body356_21 : Prog (BitVec 64) :=
.seq body356_7 body356_20

def body356_22 : Prog (BitVec 64) :=
.seq body356_12 body356_21

def body356_23 : Prog (BitVec 64) :=
.seq body356_11 body356_22

def body356_24 : Prog (BitVec 64) :=
.seq body356_10 body356_23

def body356_25 : Prog (BitVec 64) :=
.seq body356_9 body356_24

def body356_26 : Prog (BitVec 64) :=
.seq body356_8 body356_25

def body356_27 : Prog (BitVec 64) :=
.seq body356_7 body356_26

def body356_28 : Prog (BitVec 64) :=
.seq body356_6 body356_27

def body356_29 : Prog (BitVec 64) :=
.seq body356_5 body356_28

def body356_30 : Prog (BitVec 64) :=
.seq body356_4 body356_29

def body356_31 : Prog (BitVec 64) :=
.seq body356_3 body356_30

def body356_32 : Prog (BitVec 64) :=
.seq body356_2 body356_31

def body356_33 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 64#64]) body356_32

def body356_34 : Prog (BitVec 64) :=
.seq body356_1 body356_33

def body356_35 : Prog (BitVec 64) :=
.seq body356_0 body356_34

def body356_36 : Prog (BitVec 64) :=
.seq body356_0 body356_1

def body356_37 : Prog (BitVec 64) :=
.seq body356_2 body356_3

def body356_38 : Prog (BitVec 64) :=
.seq body356_37 body356_4

def body356_39 : Prog (BitVec 64) :=
.seq body356_38 body356_5

def body356_40 : Prog (BitVec 64) :=
.seq body356_39 body356_6

def body356_41 : Prog (BitVec 64) :=
.seq body356_40 body356_7

def body356_42 : Prog (BitVec 64) :=
.seq body356_41 body356_8

def body356_43 : Prog (BitVec 64) :=
.seq body356_42 body356_9

def body356_44 : Prog (BitVec 64) :=
.seq body356_43 body356_10

def body356_45 : Prog (BitVec 64) :=
.seq body356_44 body356_11

def body356_46 : Prog (BitVec 64) :=
.seq body356_45 body356_12

def body356_47 : Prog (BitVec 64) :=
.seq body356_46 body356_7

def body356_48 : Prog (BitVec 64) :=
.seq body356_47 body356_13

def body356_49 : Prog (BitVec 64) :=
.seq body356_48 body356_9

def body356_50 : Prog (BitVec 64) :=
.seq body356_49 body356_14

def body356_51 : Prog (BitVec 64) :=
.seq body356_50 body356_15

def body356_52 : Prog (BitVec 64) :=
.seq body356_51 body356_16

def body356_53 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 64#64]) body356_52

def body356_54 : Prog (BitVec 64) :=
.seq body356_36 body356_53

def originalData356 : Decl (BitVec 64) :=
.function { name := "state_fresh_tx", inline := false, exported := false, params := [], body := body356_35, returnShape := (Flapjack.Shape.one) }
def simplifiedData356 : Decl (BitVec 64) :=
.function { name := "state_fresh_tx", inline := false, exported := false, params := [], body := body356_54, returnShape := (Flapjack.Shape.one) }
def original356 := Pancake.PanLang.declToHOL originalData356
def simplified356 := Pancake.PanLang.declToHOL simplifiedData356
end InitECandidate.Proofs.FrontendStages.Declarations
