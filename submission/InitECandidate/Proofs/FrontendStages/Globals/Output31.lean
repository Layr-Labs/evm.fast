import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data31
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate15
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody31_0 : Prog (BitVec 64) :=
Flapjack.Prog.shMemStore Flapjack.OpSize.op8
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 2688614400#64, Flapjack.Exp.var Flapjack.VarKind.local "i"])
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i"]))

def globalBody31_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody31_2 : Prog (BitVec 64) :=
.seq globalBody31_0 globalBody31_1

def globalBody31_3 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody31_2

def globalBody31_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody31_5 : Prog (BitVec 64) :=
.seq globalBody31_3 globalBody31_4

def globalBody31_6 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody31_5

def globalData31 : Decl (BitVec 64) :=
.function { name := "output_write", inline := false, exported := false, params := [("src", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := globalBody31_6, returnShape := (Flapjack.Shape.one) }
def globalOutput31 := Pancake.PanLang.declToHOL globalData31
end InitECandidate.Proofs.FrontendStages.Declarations
