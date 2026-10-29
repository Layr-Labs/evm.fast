import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data266
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate250
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody266_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody266_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody266_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "is_empty") (Flapjack.Exp.const 0#64)) globalBody266_0 globalBody266_1

def globalBody266_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 1#64]

def globalBody266_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "r"))
  (Flapjack.Exp.const 0#64)) globalBody266_3 globalBody266_1

def globalBody266_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "root_hash",
    Flapjack.Exp.const 32#64]

def globalBody266_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "h")

def globalBody266_7 : Prog (BitVec 64) :=
.seq globalBody266_5 globalBody266_6

def globalBody266_8 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody266_7

def globalBody266_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "nd") (Flapjack.Exp.const 0#64)) globalBody266_8 globalBody266_1

def globalBody266_10 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "nd")

def globalBody266_11 : Prog (BitVec 64) :=
.seq globalBody266_9 globalBody266_10

def globalBody266_12 : Prog (BitVec 64) :=
.decCall ("nd") (Flapjack.Shape.one) ("_decode_witness_node") ([Flapjack.Exp.var Flapjack.VarKind.local "db", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "r")]) globalBody266_11

def globalBody266_13 : Prog (BitVec 64) :=
.seq globalBody266_4 globalBody266_12

def globalBody266_14 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("nodedb_lookup") ([Flapjack.Exp.var Flapjack.VarKind.local "db", Flapjack.Exp.var Flapjack.VarKind.local "root_hash"]) globalBody266_13

def globalBody266_15 : Prog (BitVec 64) :=
.seq globalBody266_2 globalBody266_14

def globalBody266_16 : Prog (BitVec 64) :=
.decCall ("is_empty") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.var Flapjack.VarKind.local "root_hash",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 128#64]),
  Flapjack.Exp.const 32#64]) globalBody266_15

def globalData266 : Decl (BitVec 64) :=
.function { name := "decode_witness_to_mpt", inline := false, exported := false, params := [("db", Flapjack.Shape.one), ("root_hash", Flapjack.Shape.one)], body := globalBody266_16, returnShape := (Flapjack.Shape.one) }
def globalOutput266 := Pancake.PanLang.declToHOL globalData266
end InitECandidate.Proofs.FrontendStages.Declarations
