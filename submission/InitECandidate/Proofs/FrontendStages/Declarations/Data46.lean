import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify30
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body46_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body46_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body46_2 : Prog (BitVec 64) :=
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
          Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")]])
  (Flapjack.Exp.const 0#64)) body46_0 body46_1

def body46_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body46_4 : Prog (BitVec 64) :=
.seq body46_2 body46_3

def originalData46 : Decl (BitVec 64) :=
.function { name := "u256_eq", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body46_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData46 : Decl (BitVec 64) :=
.function { name := "u256_eq", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body46_4, returnShape := (Flapjack.Shape.one) }
def original46 := Pancake.PanLang.declToHOL originalData46
def simplified46 := Pancake.PanLang.declToHOL simplifiedData46
end InitECandidate.Proofs.FrontendStages.Declarations
