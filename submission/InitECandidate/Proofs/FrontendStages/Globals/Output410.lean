import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data410
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate389
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody410_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "p")

def globalBody410_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 0#64)

def globalBody410_2 : Prog (BitVec 64) :=
.seq globalBody410_0 globalBody410_1

def globalBody410_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "cap")

def globalBody410_4 : Prog (BitVec 64) :=
.seq globalBody410_2 globalBody410_3

def globalBody410_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "l")

def globalBody410_6 : Prog (BitVec 64) :=
.seq globalBody410_4 globalBody410_5

def globalBody410_7 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul
    [Flapjack.Exp.var Flapjack.VarKind.local "esz", Flapjack.Exp.var Flapjack.VarKind.local "cap"]]) globalBody410_6

def globalBody410_8 : Prog (BitVec 64) :=
.decCall ("l") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 24#64]) globalBody410_7

def globalData410 : Decl (BitVec 64) :=
.function { name := "lst_new_scratch", inline := false, exported := false, params := [("esz", Flapjack.Shape.one), ("cap", Flapjack.Shape.one)], body := globalBody410_8, returnShape := (Flapjack.Shape.one) }
def globalOutput410 := Pancake.PanLang.declToHOL globalData410
end InitECandidate.Proofs.FrontendStages.Declarations
