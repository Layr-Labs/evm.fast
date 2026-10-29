import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data220
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate204
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody220_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "root",
    Flapjack.Exp.const 32#64]

def globalBody220_1 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "succ")

def globalBody220_2 : Prog (BitVec 64) :=
.seq globalBody220_0 globalBody220_1

def globalBody220_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "st_le64"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 33#64],
    Flapjack.Exp.var Flapjack.VarKind.local "chain_id"]

def globalBody220_4 : Prog (BitVec 64) :=
.seq globalBody220_2 globalBody220_3

def globalBody220_5 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 41#64])
  (Flapjack.Exp.op Flapjack.BinOp.and [Flapjack.Exp.var Flapjack.VarKind.local "schema_id", Flapjack.Exp.const 255#64])

def globalBody220_6 : Prog (BitVec 64) :=
.seq globalBody220_4 globalBody220_5

def globalBody220_7 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 42#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "schema_id")
    (Flapjack.Exp.const 8#64))

def globalBody220_8 : Prog (BitVec 64) :=
.seq globalBody220_6 globalBody220_7

def globalBody220_9 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 43#64)

def globalBody220_10 : Prog (BitVec 64) :=
.seq globalBody220_8 globalBody220_9

def globalData220 : Decl (BitVec 64) :=
.function { name := "serialize_result", inline := false, exported := false, params := [("out", Flapjack.Shape.one), ("root", Flapjack.Shape.one), ("succ", Flapjack.Shape.one),
  ("chain_id", Flapjack.Shape.one), ("schema_id", Flapjack.Shape.one)], body := globalBody220_10, returnShape := (Flapjack.Shape.one) }
def globalOutput220 := Pancake.PanLang.declToHOL globalData220
end InitECandidate.Proofs.FrontendStages.Declarations
