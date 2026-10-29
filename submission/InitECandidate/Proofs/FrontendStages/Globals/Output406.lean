import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data406
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate385
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody406_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "p")

def globalBody406_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 0#64)

def globalBody406_2 : Prog (BitVec 64) :=
.seq globalBody406_0 globalBody406_1

def globalBody406_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")

def globalBody406_4 : Prog (BitVec 64) :=
.seq globalBody406_2 globalBody406_3

def globalBody406_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "l")

def globalBody406_6 : Prog (BitVec 64) :=
.seq globalBody406_4 globalBody406_5

def globalBody406_7 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "esz", Flapjack.Exp.var Flapjack.VarKind.local "cap"]]) globalBody406_6

def globalBody406_8 : Prog (BitVec 64) :=
.decCall ("l") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 24#64]) globalBody406_7

def globalData406 : Decl (BitVec 64) :=
.function { name := "lst_new_scratch", inline := false, exported := false, params := [("esz", Flapjack.Shape.one), ("cap", Flapjack.Shape.one)], body := globalBody406_8, returnShape := (Flapjack.Shape.one) }
def globalOutput406 := Pancake.PanLang.declToHOL globalData406
end InitECandidate.Proofs.FrontendStages.Declarations
