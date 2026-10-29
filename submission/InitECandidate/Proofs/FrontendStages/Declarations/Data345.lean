import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify329
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body345_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "zeros"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "zeros", Flapjack.Exp.const 1#64])

def body345_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body345_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "i"]))
  (Flapjack.Exp.const 0#64)) body345_0 body345_1

def body345_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body345_4 : Prog (BitVec 64) :=
.seq body345_2 body345_3

def body345_5 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body345_4

def body345_6 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "zeros",
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.op Flapjack.BinOp.sub
            [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "zeros"],
          Flapjack.Exp.const 4#64]])

def body345_7 : Prog (BitVec 64) :=
.seq body345_5 body345_6

def body345_8 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body345_7

def body345_9 : Prog (BitVec 64) :=
.dec ("zeros") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body345_8

def originalData345 : Decl (BitVec 64) :=
.function { name := "count_tokens_in_data", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body345_9, returnShape := (Flapjack.Shape.one) }
def simplifiedData345 : Decl (BitVec 64) :=
.function { name := "count_tokens_in_data", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body345_9, returnShape := (Flapjack.Shape.one) }
def original345 := Pancake.PanLang.declToHOL originalData345
def simplified345 := Pancake.PanLang.declToHOL simplifiedData345
end InitECandidate.Proofs.FrontendStages.Declarations
