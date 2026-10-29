import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify397
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body413_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m"))

def body413_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body413_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "m"))
  (Flapjack.Exp.const 0#64)) body413_0 body413_1

def body413_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body413_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "htab_new"
  [Flapjack.Exp.const 32#64, Flapjack.Exp.const 8#64]

def body413_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body413_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "l")

def body413_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "l"), none)) "lst_new"
  [Flapjack.Exp.const 16#64, Flapjack.Exp.const 4#64]

def body413_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "l")

def body413_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "l"), none)) "lst_new"
  [Flapjack.Exp.const 24#64, Flapjack.Exp.const 2#64]

def body413_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "l")

def body413_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.global "bal_accounts", Flapjack.Exp.var Flapjack.VarKind.local "addr",
    Flapjack.Exp.var Flapjack.VarKind.local "ad"]

def body413_12 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "ad")

def body413_13 : Prog (BitVec 64) :=
.seq body413_11 body413_12

def body413_14 : Prog (BitVec 64) :=
.seq body413_10 body413_13

def body413_15 : Prog (BitVec 64) :=
.seq body413_9 body413_14

def body413_16 : Prog (BitVec 64) :=
.seq body413_8 body413_15

def body413_17 : Prog (BitVec 64) :=
.seq body413_7 body413_16

def body413_18 : Prog (BitVec 64) :=
.seq body413_6 body413_17

def body413_19 : Prog (BitVec 64) :=
.decCall ("l") (Flapjack.Shape.one) ("lst_new") ([Flapjack.Exp.const 40#64, Flapjack.Exp.const 4#64]) body413_18

def body413_20 : Prog (BitVec 64) :=
.seq body413_5 body413_19

def body413_21 : Prog (BitVec 64) :=
.seq body413_4 body413_20

def body413_22 : Prog (BitVec 64) :=
.seq body413_3 body413_21

def body413_23 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 32#64, Flapjack.Exp.const 8#64]) body413_22

def body413_24 : Prog (BitVec 64) :=
.decCall ("ad") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 40#64]) body413_23

def body413_25 : Prog (BitVec 64) :=
.seq body413_2 body413_24

def body413_26 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.global "bal_accounts", Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body413_25

def body413_27 : Prog (BitVec 64) :=
.seq body413_3 body413_4

def body413_28 : Prog (BitVec 64) :=
.seq body413_27 body413_5

def body413_29 : Prog (BitVec 64) :=
.seq body413_6 body413_7

def body413_30 : Prog (BitVec 64) :=
.seq body413_29 body413_8

def body413_31 : Prog (BitVec 64) :=
.seq body413_30 body413_9

def body413_32 : Prog (BitVec 64) :=
.seq body413_31 body413_10

def body413_33 : Prog (BitVec 64) :=
.seq body413_32 body413_11

def body413_34 : Prog (BitVec 64) :=
.seq body413_33 body413_12

def body413_35 : Prog (BitVec 64) :=
.decCall ("l") (Flapjack.Shape.one) ("lst_new") ([Flapjack.Exp.const 40#64, Flapjack.Exp.const 4#64]) body413_34

def body413_36 : Prog (BitVec 64) :=
.seq body413_28 body413_35

def body413_37 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 32#64, Flapjack.Exp.const 8#64]) body413_36

def body413_38 : Prog (BitVec 64) :=
.decCall ("ad") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 40#64]) body413_37

def body413_39 : Prog (BitVec 64) :=
.seq body413_2 body413_38

def body413_40 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.global "bal_accounts", Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body413_39

def originalData413 : Decl (BitVec 64) :=
.function { name := "bal_ensure_account", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body413_26, returnShape := (Flapjack.Shape.one) }
def simplifiedData413 : Decl (BitVec 64) :=
.function { name := "bal_ensure_account", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body413_40, returnShape := (Flapjack.Shape.one) }
def original413 := Pancake.PanLang.declToHOL originalData413
def simplified413 := Pancake.PanLang.declToHOL simplifiedData413
end InitECandidate.Proofs.FrontendStages.Declarations
