import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data387
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate371
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody387_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody387_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody387_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "a") (Flapjack.Exp.const 1#64)) globalBody387_0 globalBody387_1

def globalBody387_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "e") (Flapjack.Exp.const 0#64)) globalBody387_0 globalBody387_1

def globalBody387_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody387_5 : Prog (BitVec 64) :=
.seq globalBody387_3 globalBody387_4

def globalBody387_6 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.one) ("acct_is_empty") ([Flapjack.Exp.var Flapjack.VarKind.local "a"]) globalBody387_5

def globalBody387_7 : Prog (BitVec 64) :=
.seq globalBody387_2 globalBody387_6

def globalBody387_8 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account_optional") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody387_7

def globalData387 : Decl (BitVec 64) :=
.function { name := "is_account_alive", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := globalBody387_8, returnShape := (Flapjack.Shape.one) }
def globalOutput387 := Pancake.PanLang.declToHOL globalData387
end InitECandidate.Proofs.FrontendStages.Declarations
