import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify559
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body575_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body575_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body575_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 0#64)) body575_0 body575_1

def body575_3 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.one) ("is_valid_delegation") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "code"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "code")]) body575_2

def body575_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "code"))
  (Flapjack.Exp.const 0#64)) body575_3 body575_1

def body575_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 0#64]))
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "auth", Flapjack.Exp.const 40#64]))) body575_0 body575_1

def body575_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body575_7 : Prog (BitVec 64) :=
.seq body575_5 body575_6

def body575_8 : Prog (BitVec 64) :=
.seq body575_4 body575_7

def body575_9 : Prog (BitVec 64) :=
.decCall ("code") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("get_code") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "authority"]) body575_8

def body575_10 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "authority"]) body575_9

def body575_11 : Prog (BitVec 64) :=
.seq body575_4 body575_5

def body575_12 : Prog (BitVec 64) :=
.seq body575_11 body575_6

def body575_13 : Prog (BitVec 64) :=
.decCall ("code") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("get_code") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "authority"]) body575_12

def body575_14 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "authority"]) body575_13

def originalData575 : Decl (BitVec 64) :=
.function { name := "validate_authorization_checks", inline := false, exported := false, params := [("auth", Flapjack.Shape.one), ("authority", Flapjack.Shape.one)], body := body575_10, returnShape := (Flapjack.Shape.one) }
def simplifiedData575 : Decl (BitVec 64) :=
.function { name := "validate_authorization_checks", inline := false, exported := false, params := [("auth", Flapjack.Shape.one), ("authority", Flapjack.Shape.one)], body := body575_14, returnShape := (Flapjack.Shape.one) }
def original575 := Pancake.PanLang.declToHOL originalData575
def simplified575 := Pancake.PanLang.declToHOL simplifiedData575
end InitECandidate.Proofs.FrontendStages.Declarations
