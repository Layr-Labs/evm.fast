import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify204
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body220_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "root",
    Flapjack.Exp.const 32#64]

def body220_1 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "succ")

def body220_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_le64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 33#64],
    Flapjack.Exp.var Flapjack.VarKind.local "chain_id"]

def body220_3 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 41#64])
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "schema_id", Flapjack.Exp.const 255#64])

def body220_4 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 42#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "schema_id")
    (Flapjack.Exp.const 8#64))

def body220_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 43#64)

def body220_6 : Prog (BitVec 64) :=
.seq body220_4 body220_5

def body220_7 : Prog (BitVec 64) :=
.seq body220_3 body220_6

def body220_8 : Prog (BitVec 64) :=
.seq body220_2 body220_7

def body220_9 : Prog (BitVec 64) :=
.seq body220_1 body220_8

def body220_10 : Prog (BitVec 64) :=
.seq body220_0 body220_9

def body220_11 : Prog (BitVec 64) :=
.seq body220_0 body220_1

def body220_12 : Prog (BitVec 64) :=
.seq body220_11 body220_2

def body220_13 : Prog (BitVec 64) :=
.seq body220_12 body220_3

def body220_14 : Prog (BitVec 64) :=
.seq body220_13 body220_4

def body220_15 : Prog (BitVec 64) :=
.seq body220_14 body220_5

def originalData220 : Decl (BitVec 64) :=
.function { name := "serialize_result", inline := false, exported := false, params := [("out", Flapjack.Shape.one), ("root", Flapjack.Shape.one), ("succ", Flapjack.Shape.one),
  ("chain_id", Flapjack.Shape.one), ("schema_id", Flapjack.Shape.one)], body := body220_10, returnShape := (Flapjack.Shape.one) }
def simplifiedData220 : Decl (BitVec 64) :=
.function { name := "serialize_result", inline := false, exported := false, params := [("out", Flapjack.Shape.one), ("root", Flapjack.Shape.one), ("succ", Flapjack.Shape.one),
  ("chain_id", Flapjack.Shape.one), ("schema_id", Flapjack.Shape.one)], body := body220_15, returnShape := (Flapjack.Shape.one) }
def original220 := Pancake.PanLang.declToHOL originalData220
def simplified220 := Pancake.PanLang.declToHOL simplifiedData220
end InitECandidate.Proofs.FrontendStages.Declarations
