import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data681
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate665
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody681_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody681_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "i")

def globalBody681_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody681_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 0#64)) globalBody681_1 globalBody681_2

def globalBody681_4 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("is_zero_bytes") ([Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "a",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 32#64]],
  Flapjack.Exp.const 32#64]) globalBody681_3

def globalBody681_5 : Prog (BitVec 64) :=
.seq globalBody681_0 globalBody681_4

def globalBody681_6 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) globalBody681_5

def globalBody681_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.const 0#64, Flapjack.Exp.const 1#64])

def globalBody681_8 : Prog (BitVec 64) :=
.seq globalBody681_6 globalBody681_7

def globalBody681_9 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "n") globalBody681_8

def globalData681 : Decl (BitVec 64) :=
.function { name := "fq_poly_deg", inline := false, exported := false, params := [("a", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := globalBody681_9, returnShape := (Flapjack.Shape.one) }
def globalOutput681 := Pancake.PanLang.declToHOL globalData681
end InitECandidate.Proofs.FrontendStages.Declarations
