import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify13
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body29_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "p") (Flapjack.Exp.var Flapjack.VarKind.local "w")

def body29_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body29_2 : Prog (BitVec 64) :=
.seq body29_0 body29_1

def body29_3 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("bswap64") ([Flapjack.Exp.var Flapjack.VarKind.local "v"]) body29_2

def body29_4 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body29_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 7#64])
  (Flapjack.Exp.const 0#64)) body29_3 body29_4

def body29_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be32"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 32#64)]

def body29_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_be32"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 4#64],
    Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body29_8 : Prog (BitVec 64) :=
.seq body29_7 body29_1

def body29_9 : Prog (BitVec 64) :=
.seq body29_6 body29_8

def body29_10 : Prog (BitVec 64) :=
.seq body29_5 body29_9

def body29_11 : Prog (BitVec 64) :=
.seq body29_5 body29_6

def body29_12 : Prog (BitVec 64) :=
.seq body29_11 body29_7

def body29_13 : Prog (BitVec 64) :=
.seq body29_12 body29_1

def originalData29 : Decl (BitVec 64) :=
.function { name := "st_be64", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("v", Flapjack.Shape.one)], body := body29_10, returnShape := (Flapjack.Shape.one) }
def simplifiedData29 : Decl (BitVec 64) :=
.function { name := "st_be64", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("v", Flapjack.Shape.one)], body := body29_13, returnShape := (Flapjack.Shape.one) }
def original29 := Pancake.PanLang.declToHOL originalData29
def simplified29 := Pancake.PanLang.declToHOL simplifiedData29
end InitECandidate.Proofs.FrontendStages.Declarations
