import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data271
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate255
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody271_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "klen",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 152#64])]

def globalBody271_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "key_to_nibbles"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 152#64]),
    Flapjack.Exp.const 32#64, Flapjack.Exp.var Flapjack.VarKind.local "nb"]

def globalBody271_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rStruct [Flapjack.Exp.var Flapjack.VarKind.local "nb", Flapjack.Exp.const 64#64])

def globalBody271_3 : Prog (BitVec 64) :=
.seq globalBody271_1 globalBody271_2

def globalBody271_4 : Prog (BitVec 64) :=
.decCall ("nb") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 64#64]) globalBody271_3

def globalBody271_5 : Prog (BitVec 64) :=
.seq globalBody271_0 globalBody271_4

def globalBody271_6 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody271_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 8#64]))
  (Flapjack.Exp.const 0#64)) globalBody271_5 globalBody271_6

def globalBody271_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "key_to_nibbles"
  [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "klen",
    Flapjack.Exp.var Flapjack.VarKind.local "nb2"]

def globalBody271_9 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "nb2",
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "klen"]])

def globalBody271_10 : Prog (BitVec 64) :=
.seq globalBody271_8 globalBody271_9

def globalBody271_11 : Prog (BitVec 64) :=
.decCall ("nb2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "klen"]]) globalBody271_10

def globalBody271_12 : Prog (BitVec 64) :=
.seq globalBody271_7 globalBody271_11

def globalData271 : Decl (BitVec 64) :=
.function { name := "mpt_nibble_key", inline := false, exported := false, params := [("m", Flapjack.Shape.one), ("key", Flapjack.Shape.one), ("klen", Flapjack.Shape.one)], body := globalBody271_12, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput271 := Pancake.PanLang.declToHOL globalData271
end InitECandidate.Proofs.FrontendStages.Declarations
