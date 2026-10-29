import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data419
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate398
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody419_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "code")

def globalBody419_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "code_len")

def globalBody419_2 : Prog (BitVec 64) :=
.seq globalBody419_0 globalBody419_1

def globalBody419_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody419_4 : Prog (BitVec 64) :=
.seq globalBody419_2 globalBody419_3

def globalBody419_5 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.one) ("lst_upsert_idx") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ad", Flapjack.Exp.const 32#64]),
  Flapjack.Exp.const 24#64, Flapjack.Exp.var Flapjack.VarKind.local "idx"]) globalBody419_4

def globalBody419_6 : Prog (BitVec 64) :=
.decCall ("ad") (Flapjack.Shape.one) ("bal_ensure_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) globalBody419_5

def globalData419 : Decl (BitVec 64) :=
.function { name := "add_code_change", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("idx", Flapjack.Shape.one), ("code", Flapjack.Shape.one),
  ("code_len", Flapjack.Shape.one)], body := globalBody419_6, returnShape := (Flapjack.Shape.one) }
def globalOutput419 := Pancake.PanLang.declToHOL globalData419
end InitECandidate.Proofs.FrontendStages.Declarations
