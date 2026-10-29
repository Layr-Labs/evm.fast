import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify623
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body639_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "pt") (Flapjack.Exp.var Flapjack.VarKind.local "x")

def body639_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "y")

def body639_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 1#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body639_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body639_4 : Prog (BitVec 64) :=
.seq body639_2 body639_3

def body639_5 : Prog (BitVec 64) :=
.seq body639_1 body639_4

def body639_6 : Prog (BitVec 64) :=
.seq body639_0 body639_5

def body639_7 : Prog (BitVec 64) :=
.seq body639_0 body639_1

def body639_8 : Prog (BitVec 64) :=
.seq body639_7 body639_2

def body639_9 : Prog (BitVec 64) :=
.seq body639_8 body639_3

def originalData639 : Decl (BitVec 64) :=
.function { name := "p256_set_affine", inline := false, exported := false, params := [("pt", Flapjack.Shape.one),
  ("x", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("y", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body639_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData639 : Decl (BitVec 64) :=
.function { name := "p256_set_affine", inline := false, exported := false, params := [("pt", Flapjack.Shape.one),
  ("x", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("y", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body639_9, returnShape := (Flapjack.Shape.one) }
def original639 := Pancake.PanLang.declToHOL originalData639
def simplified639 := Pancake.PanLang.declToHOL simplifiedData639
end InitECandidate.Proofs.FrontendStages.Declarations
