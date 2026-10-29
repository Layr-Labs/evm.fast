import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify429
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body445_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "v")]

def body445_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 4#64],
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "v")]

def body445_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 12#64],
    Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "v")]

def body445_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "a")

def body445_4 : Prog (BitVec 64) :=
.seq body445_2 body445_3

def body445_5 : Prog (BitVec 64) :=
.seq body445_1 body445_4

def body445_6 : Prog (BitVec 64) :=
.seq body445_0 body445_5

def body445_7 : Prog (BitVec 64) :=
.dec ("a") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 240#64]) body445_6

def body445_8 : Prog (BitVec 64) :=
.seq body445_0 body445_1

def body445_9 : Prog (BitVec 64) :=
.seq body445_8 body445_2

def body445_10 : Prog (BitVec 64) :=
.seq body445_9 body445_3

def body445_11 : Prog (BitVec 64) :=
.dec ("a") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 240#64]) body445_10

def originalData445 : Decl (BitVec 64) :=
.function { name := "to_address_masked", inline := false, exported := false, params := [("v", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body445_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData445 : Decl (BitVec 64) :=
.function { name := "to_address_masked", inline := false, exported := false, params := [("v", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body445_11, returnShape := (Flapjack.Shape.one) }
def original445 := Pancake.PanLang.declToHOL originalData445
def simplified445 := Pancake.PanLang.declToHOL simplifiedData445
end InitECandidate.Proofs.FrontendStages.Declarations
