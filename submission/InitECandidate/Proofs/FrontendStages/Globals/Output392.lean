import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data392
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate376
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody392_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "set_account"
  [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def globalBody392_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "destroy_account" [Flapjack.Exp.var Flapjack.VarKind.local "addr"]

def globalBody392_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody392_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "e") (Flapjack.Exp.const 0#64)) globalBody392_1 globalBody392_2

def globalBody392_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody392_5 : Prog (BitVec 64) :=
.seq globalBody392_3 globalBody392_4

def globalBody392_6 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.one) ("acct_is_empty") ([Flapjack.Exp.var Flapjack.VarKind.local "a"]) globalBody392_5

def globalBody392_7 : Prog (BitVec 64) :=
.seq globalBody392_0 globalBody392_6

def globalData392 : Decl (BitVec 64) :=
.function { name := "modify_state_commit", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("a", Flapjack.Shape.one)], body := globalBody392_7, returnShape := (Flapjack.Shape.one) }
def globalOutput392 := Pancake.PanLang.declToHOL globalData392
end InitECandidate.Proofs.FrontendStages.Declarations
