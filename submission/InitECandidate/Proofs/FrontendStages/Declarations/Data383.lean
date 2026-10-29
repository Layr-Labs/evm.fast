import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify367
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body383_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body383_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body383_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "m"), Flapjack.Exp.const 24#64]))) body383_0 body383_1

def body383_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "m"))
  (Flapjack.Exp.const 0#64)) body383_2 body383_1

def body383_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "m"), none)) "htab_get"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "addr"]

def body383_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "record_pre_state_read" [Flapjack.Exp.var Flapjack.VarKind.local "addr"]

def body383_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "r")

def body383_7 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.one) ("ws_account_has_storage") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body383_6

def body383_8 : Prog (BitVec 64) :=
.seq body383_5 body383_7

def body383_9 : Prog (BitVec 64) :=
.seq body383_3 body383_8

def body383_10 : Prog (BitVec 64) :=
.seq body383_4 body383_9

def body383_11 : Prog (BitVec 64) :=
.seq body383_3 body383_10

def body383_12 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 32#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body383_11

def body383_13 : Prog (BitVec 64) :=
.seq body383_3 body383_4

def body383_14 : Prog (BitVec 64) :=
.seq body383_13 body383_3

def body383_15 : Prog (BitVec 64) :=
.seq body383_14 body383_5

def body383_16 : Prog (BitVec 64) :=
.seq body383_15 body383_7

def body383_17 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 32#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body383_16

def originalData383 : Decl (BitVec 64) :=
.function { name := "account_has_storage", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body383_12, returnShape := (Flapjack.Shape.one) }
def simplifiedData383 : Decl (BitVec 64) :=
.function { name := "account_has_storage", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body383_17, returnShape := (Flapjack.Shape.one) }
def original383 := Pancake.PanLang.declToHOL originalData383
def simplified383 := Pancake.PanLang.declToHOL simplifiedData383
end InitECandidate.Proofs.FrontendStages.Declarations
