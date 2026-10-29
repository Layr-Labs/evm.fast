import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify15
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body31_0 : Prog (BitVec 64) :=
Flapjack.Prog.shMemStore Flapjack.OpSize.op8
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 2688614400#64, Flapjack.Exp.var Flapjack.VarKind.local "i"])
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "src", Flapjack.Exp.var Flapjack.VarKind.local "i"]))

def body31_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body31_2 : Prog (BitVec 64) :=
.seq body31_0 body31_1

def body31_3 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body31_2

def body31_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body31_5 : Prog (BitVec 64) :=
.seq body31_3 body31_4

def body31_6 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body31_5

def originalData31 : Decl (BitVec 64) :=
.function { name := "output_write", inline := false, exported := false, params := [("src", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body31_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData31 : Decl (BitVec 64) :=
.function { name := "output_write", inline := false, exported := false, params := [("src", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body31_6, returnShape := (Flapjack.Shape.one) }
def original31 := Pancake.PanLang.declToHOL originalData31
def simplified31 := Pancake.PanLang.declToHOL simplifiedData31
end InitECandidate.Proofs.FrontendStages.Declarations
