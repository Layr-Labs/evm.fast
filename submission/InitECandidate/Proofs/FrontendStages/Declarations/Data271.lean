import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify255
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body271_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "klen",
    Flapjack.Exp.var Flapjack.VarKind.global "mpt_hash_scratch"]

def body271_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "key_to_nibbles"
  [Flapjack.Exp.var Flapjack.VarKind.global "mpt_hash_scratch", Flapjack.Exp.const 32#64,
    Flapjack.Exp.var Flapjack.VarKind.local "nb"]

def body271_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rStruct [Flapjack.Exp.var Flapjack.VarKind.local "nb", Flapjack.Exp.const 64#64])

def body271_3 : Prog (BitVec 64) :=
.seq body271_1 body271_2

def body271_4 : Prog (BitVec 64) :=
.decCall ("nb") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) body271_3

def body271_5 : Prog (BitVec 64) :=
.seq body271_0 body271_4

def body271_6 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body271_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 8#64]))
  (Flapjack.Exp.const 0#64)) body271_5 body271_6

def body271_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "key_to_nibbles"
  [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "klen",
    Flapjack.Exp.var Flapjack.VarKind.local "nb2"]

def body271_9 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "nb2",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "klen"]])

def body271_10 : Prog (BitVec 64) :=
.seq body271_8 body271_9

def body271_11 : Prog (BitVec 64) :=
.decCall ("nb2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "klen"]]) body271_10

def body271_12 : Prog (BitVec 64) :=
.seq body271_7 body271_11

def originalData271 : Decl (BitVec 64) :=
.function { name := "mpt_nibble_key", inline := false, exported := false, params := [("m", Flapjack.Shape.one), ("key", Flapjack.Shape.one), ("klen", Flapjack.Shape.one)], body := body271_12, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData271 : Decl (BitVec 64) :=
.function { name := "mpt_nibble_key", inline := false, exported := false, params := [("m", Flapjack.Shape.one), ("key", Flapjack.Shape.one), ("klen", Flapjack.Shape.one)], body := body271_12, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def original271 := Pancake.PanLang.declToHOL originalData271
def simplified271 := Pancake.PanLang.declToHOL simplifiedData271
end InitECandidate.Proofs.FrontendStages.Declarations
