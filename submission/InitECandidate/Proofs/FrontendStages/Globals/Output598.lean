import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data598
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate582
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody598_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "buf") (Flapjack.Exp.const 255#64)

def globalBody598_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 1#64],
    Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 20#64]

def globalBody598_2 : Prog (BitVec 64) :=
.seq globalBody598_0 globalBody598_1

def globalBody598_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 21#64],
    Flapjack.Exp.var Flapjack.VarKind.local "salt", Flapjack.Exp.const 32#64]

def globalBody598_4 : Prog (BitVec 64) :=
.seq globalBody598_2 globalBody598_3

def globalBody598_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.var Flapjack.VarKind.local "code", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 53#64]]

def globalBody598_6 : Prog (BitVec 64) :=
.seq globalBody598_4 globalBody598_5

def globalBody598_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 85#64, Flapjack.Exp.var Flapjack.VarKind.local "h"]

def globalBody598_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 12#64],
    Flapjack.Exp.const 20#64]

def globalBody598_9 : Prog (BitVec 64) :=
.seq globalBody598_7 globalBody598_8

def globalBody598_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody598_11 : Prog (BitVec 64) :=
.seq globalBody598_9 globalBody598_10

def globalBody598_12 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody598_13 : Prog (BitVec 64) :=
.seq globalBody598_11 globalBody598_12

def globalBody598_14 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody598_13

def globalBody598_15 : Prog (BitVec 64) :=
.seq globalBody598_6 globalBody598_14

def globalBody598_16 : Prog (BitVec 64) :=
.decCall ("buf") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 96#64]) globalBody598_15

def globalBody598_17 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody598_16

def globalData598 : Decl (BitVec 64) :=
.function { name := "compute_create2_contract_address", inline := false, exported := false, params := [("addr", Flapjack.Shape.one), ("salt", Flapjack.Shape.one), ("code", Flapjack.Shape.one), ("n", Flapjack.Shape.one),
  ("out", Flapjack.Shape.one)], body := globalBody598_17, returnShape := (Flapjack.Shape.one) }
def globalOutput598 := Pancake.PanLang.declToHOL globalData598
end InitECandidate.Proofs.FrontendStages.Declarations
