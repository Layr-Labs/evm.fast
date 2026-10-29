import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data393
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate377
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody393_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "destroy_storage" [Flapjack.Exp.var Flapjack.VarKind.local "addr"]

def globalBody393_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "a"), none)) "acct_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "a"]

def globalBody393_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 0#64)

def globalBody393_3 : Prog (BitVec 64) :=
.seq globalBody393_1 globalBody393_2

def globalBody393_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 136#64]))

def globalBody393_5 : Prog (BitVec 64) :=
.seq globalBody393_3 globalBody393_4

def globalBody393_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "modify_state_commit"
  [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def globalBody393_7 : Prog (BitVec 64) :=
.seq globalBody393_5 globalBody393_6

def globalBody393_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody393_9 : Prog (BitVec 64) :=
.seq globalBody393_7 globalBody393_8

def globalBody393_10 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody393_9

def globalBody393_11 : Prog (BitVec 64) :=
.seq globalBody393_0 globalBody393_10

def globalData393 : Decl (BitVec 64) :=
.function { name := "clear_account_preserving_balance", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := globalBody393_11, returnShape := (Flapjack.Shape.one) }
def globalOutput393 := Pancake.PanLang.declToHOL globalData393
end InitECandidate.Proofs.FrontendStages.Declarations
