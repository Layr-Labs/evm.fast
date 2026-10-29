import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify345
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body361_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.global "sk_buf", Flapjack.Exp.var Flapjack.VarKind.local "addr",
    Flapjack.Exp.const 20#64]

def body361_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "sk_buf", Flapjack.Exp.const 20#64],
    Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.const 32#64]

def body361_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.global "sk_buf")

def body361_3 : Prog (BitVec 64) :=
.seq body361_1 body361_2

def body361_4 : Prog (BitVec 64) :=
.seq body361_0 body361_3

def body361_5 : Prog (BitVec 64) :=
.seq body361_0 body361_1

def body361_6 : Prog (BitVec 64) :=
.seq body361_5 body361_2

def originalData361 : Decl (BitVec 64) :=
.function { name := "sk_make", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("key", Flapjack.Shape.one)], body := body361_4, returnShape := (Flapjack.Shape.one) }
def simplifiedData361 : Decl (BitVec 64) :=
.function { name := "sk_make", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("key", Flapjack.Shape.one)], body := body361_6, returnShape := (Flapjack.Shape.one) }
def original361 := Pancake.PanLang.declToHOL originalData361
def simplified361 := Pancake.PanLang.declToHOL simplifiedData361
end InitECandidate.Proofs.FrontendStages.Declarations
