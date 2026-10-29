import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify683
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body699_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body699_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body699_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
          Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
          Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
          Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b")],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
          Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
          Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "b")],
      Flapjack.Exp.op Flapjack.BinOp.xor
        [Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
          Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "b")]])
  (Flapjack.Exp.const 0#64)) body699_0 body699_1

def body699_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body699_4 : Prog (BitVec 64) :=
.seq body699_2 body699_3

def originalData699 : Decl (BitVec 64) :=
.function { name := "bls_fp_eq", inline := false, exported := false, params := [("a",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one]),
  ("b",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := body699_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData699 : Decl (BitVec 64) :=
.function { name := "bls_fp_eq", inline := false, exported := false, params := [("a",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one]),
  ("b",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := body699_4, returnShape := (Flapjack.Shape.one) }
def original699 := Pancake.PanLang.declToHOL originalData699
def simplified699 := Pancake.PanLang.declToHOL simplifiedData699
end InitECandidate.Proofs.FrontendStages.Declarations
