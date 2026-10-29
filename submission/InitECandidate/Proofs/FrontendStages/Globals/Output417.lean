import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data417
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate396
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody417_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "post_balance")

def globalBody417_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody417_2 : Prog (BitVec 64) :=
.seq globalBody417_0 globalBody417_1

def globalBody417_3 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.one) ("lst_upsert_idx") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 16#64]),
  Flapjack.Exp.const 40#64, Flapjack.Exp.var Flapjack.VarKind.local "idx"]) globalBody417_2

def globalBody417_4 : Prog (BitVec 64) :=
.decCall ("ad") (Flapjack.Shape.one) ("bal_ensure_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody417_3

def globalData417 : Decl (BitVec 64) :=
.function { name := "add_balance_change", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("idx", Flapjack.Shape.one),
  ("post_balance",
    Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody417_4, returnShape := (Flapjack.Shape.one) }
def globalOutput417 := Pancake.PanLang.declToHOL globalData417
end InitECandidate.Proofs.FrontendStages.Declarations
