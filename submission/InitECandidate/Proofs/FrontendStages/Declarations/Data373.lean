import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify357
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body373_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ts", Flapjack.Exp.const 8#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 1#64]

def body373_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "w"))

def body373_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body373_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "w"))
  (Flapjack.Exp.const 0#64)) body373_1 body373_2

def body373_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "record_pre_state_read" [Flapjack.Exp.var Flapjack.VarKind.local "addr"]

def body373_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "a")

def body373_6 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("ws_get_account_optional") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body373_5

def body373_7 : Prog (BitVec 64) :=
.seq body373_4 body373_6

def body373_8 : Prog (BitVec 64) :=
.seq body373_3 body373_7

def body373_9 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 16#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body373_8

def body373_10 : Prog (BitVec 64) :=
.seq body373_0 body373_9

def body373_11 : Prog (BitVec 64) :=
.seq body373_3 body373_4

def body373_12 : Prog (BitVec 64) :=
.seq body373_11 body373_6

def body373_13 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("htab_get") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 16#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body373_12

def body373_14 : Prog (BitVec 64) :=
.seq body373_0 body373_13

def originalData373 : Decl (BitVec 64) :=
.function { name := "get_pre_state_account_optional", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body373_10, returnShape := (Flapjack.Shape.one) }
def simplifiedData373 : Decl (BitVec 64) :=
.function { name := "get_pre_state_account_optional", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body373_14, returnShape := (Flapjack.Shape.one) }
def original373 := Pancake.PanLang.declToHOL originalData373
def simplified373 := Pancake.PanLang.declToHOL simplifiedData373
end InitECandidate.Proofs.FrontendStages.Declarations
