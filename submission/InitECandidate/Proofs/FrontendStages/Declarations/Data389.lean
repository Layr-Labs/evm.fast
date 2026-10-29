import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify373
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body389_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "StateErr" (Flapjack.Exp.const 3#64)

def body389_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body389_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "a") (Flapjack.Exp.const 1#64)) body389_0 body389_1

def body389_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "inner"), none)) "htab_new"
  [Flapjack.Exp.const 32#64, Flapjack.Exp.const 8#64]

def body389_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "jset"
  [Flapjack.Exp.var Flapjack.VarKind.local "outer", Flapjack.Exp.var Flapjack.VarKind.local "addr",
    Flapjack.Exp.var Flapjack.VarKind.local "inner"]

def body389_5 : Prog (BitVec 64) :=
.seq body389_3 body389_4

def body389_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "inner"
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m"))

def body389_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "m"))
  (Flapjack.Exp.const 0#64)) body389_5 body389_6

def body389_8 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.var Flapjack.VarKind.local "value")

def body389_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "jset"
  [Flapjack.Exp.var Flapjack.VarKind.local "inner", Flapjack.Exp.var Flapjack.VarKind.local "key",
    Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body389_10 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body389_11 : Prog (BitVec 64) :=
.seq body389_9 body389_10

def body389_12 : Prog (BitVec 64) :=
.seq body389_8 body389_11

def body389_13 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body389_12

def body389_14 : Prog (BitVec 64) :=
.seq body389_7 body389_13

def body389_15 : Prog (BitVec 64) :=
.dec ("inner") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body389_14

def body389_16 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.local "outer", Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body389_15

def body389_17 : Prog (BitVec 64) :=
.dec ("outer") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 32#64])) body389_16

def body389_18 : Prog (BitVec 64) :=
.seq body389_2 body389_17

def body389_19 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account_optional") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body389_18

def body389_20 : Prog (BitVec 64) :=
.seq body389_8 body389_9

def body389_21 : Prog (BitVec 64) :=
.seq body389_20 body389_10

def body389_22 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body389_21

def body389_23 : Prog (BitVec 64) :=
.seq body389_7 body389_22

def body389_24 : Prog (BitVec 64) :=
.dec ("inner") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body389_23

def body389_25 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.var Flapjack.VarKind.local "outer", Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body389_24

def body389_26 : Prog (BitVec 64) :=
.dec ("outer") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 32#64])) body389_25

def body389_27 : Prog (BitVec 64) :=
.seq body389_2 body389_26

def body389_28 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account_optional") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body389_27

def originalData389 : Decl (BitVec 64) :=
.function { name := "set_storage", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("key", Flapjack.Shape.one),
  ("value", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body389_19, returnShape := (Flapjack.Shape.one) }
def simplifiedData389 : Decl (BitVec 64) :=
.function { name := "set_storage", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("key", Flapjack.Shape.one),
  ("value", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body389_28, returnShape := (Flapjack.Shape.one) }
def original389 := Pancake.PanLang.declToHOL originalData389
def simplified389 := Pancake.PanLang.declToHOL simplifiedData389
end InitECandidate.Proofs.FrontendStages.Declarations
