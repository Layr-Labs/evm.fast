import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify153
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body169_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "pt") (Flapjack.Exp.var Flapjack.VarKind.local "x")

def body169_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "y")

def body169_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 1#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body169_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body169_4 : Prog (BitVec 64) :=
.seq body169_2 body169_3

def body169_5 : Prog (BitVec 64) :=
.seq body169_1 body169_4

def body169_6 : Prog (BitVec 64) :=
.seq body169_0 body169_5

def body169_7 : Prog (BitVec 64) :=
.seq body169_0 body169_1

def body169_8 : Prog (BitVec 64) :=
.seq body169_7 body169_2

def body169_9 : Prog (BitVec 64) :=
.seq body169_8 body169_3

def originalData169 : Decl (BitVec 64) :=
.function { name := "ec_set_affine", inline := false, exported := false, params := [("pt", Flapjack.Shape.one),
  ("x", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("y", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body169_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData169 : Decl (BitVec 64) :=
.function { name := "ec_set_affine", inline := false, exported := false, params := [("pt", Flapjack.Shape.one),
  ("x", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("y", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body169_9, returnShape := (Flapjack.Shape.one) }
def original169 := Pancake.PanLang.declToHOL originalData169
def simplified169 := Pancake.PanLang.declToHOL simplifiedData169
end InitECandidate.Proofs.FrontendStages.Declarations
