import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data672
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate656
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody672_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_set_one"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "pt"]

def globalBody672_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_set_one"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.var Flapjack.VarKind.local "esz"]]

def globalBody672_2 : Prog (BitVec 64) :=
.seq globalBody672_0 globalBody672_1

def globalBody672_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_set_zero"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "pt",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "esz"]]]

def globalBody672_4 : Prog (BitVec 64) :=
.seq globalBody672_2 globalBody672_3

def globalBody672_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody672_6 : Prog (BitVec 64) :=
.seq globalBody672_4 globalBody672_5

def globalBody672_7 : Prog (BitVec 64) :=
.dec ("esz") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.const 32#64]) globalBody672_6

def globalData672 : Decl (BitVec 64) :=
.function { name := "ecp_set_inf", inline := false, exported := false, params := [("fld", Flapjack.Shape.one), ("pt", Flapjack.Shape.one)], body := globalBody672_7, returnShape := (Flapjack.Shape.one) }
def globalOutput672 := Pancake.PanLang.declToHOL globalData672
end InitECandidate.Proofs.FrontendStages.Declarations
