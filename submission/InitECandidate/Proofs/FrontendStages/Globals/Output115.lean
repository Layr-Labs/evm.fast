import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data115
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate95
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody115_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def globalBody115_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody115_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "b") (Flapjack.Exp.const 128#64)) globalBody115_0 globalBody115_1

def globalBody115_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "b"],
      Flapjack.Exp.const 128#64])

def globalBody115_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 183#64) (Flapjack.Exp.var Flapjack.VarKind.local "b")) globalBody115_3 globalBody115_1

def globalBody115_5 : Prog (BitVec 64) :=
.seq globalBody115_2 globalBody115_4

def globalBody115_6 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "ll",
      Flapjack.Exp.var Flapjack.VarKind.local "n"])

def globalBody115_7 : Prog (BitVec 64) :=
.decCall ("n") (Flapjack.Shape.one) ("rlp_read_length") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64],
  Flapjack.Exp.var Flapjack.VarKind.local "ll"]) globalBody115_6

def globalBody115_8 : Prog (BitVec 64) :=
.dec ("ll") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 183#64]) globalBody115_7

def globalBody115_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 191#64) (Flapjack.Exp.var Flapjack.VarKind.local "b")) globalBody115_8 globalBody115_1

def globalBody115_10 : Prog (BitVec 64) :=
.seq globalBody115_5 globalBody115_9

def globalBody115_11 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "b"],
      Flapjack.Exp.const 192#64])

def globalBody115_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 247#64) (Flapjack.Exp.var Flapjack.VarKind.local "b")) globalBody115_11 globalBody115_1

def globalBody115_13 : Prog (BitVec 64) :=
.seq globalBody115_10 globalBody115_12

def globalBody115_14 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "ll2",
      Flapjack.Exp.var Flapjack.VarKind.local "n2"])

def globalBody115_15 : Prog (BitVec 64) :=
.decCall ("n2") (Flapjack.Shape.one) ("rlp_read_length") ([Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64],
  Flapjack.Exp.var Flapjack.VarKind.local "ll2"]) globalBody115_14

def globalBody115_16 : Prog (BitVec 64) :=
.dec ("ll2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.const 247#64]) globalBody115_15

def globalBody115_17 : Prog (BitVec 64) :=
.seq globalBody115_13 globalBody115_16

def globalBody115_18 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "p")) globalBody115_17

def globalData115 : Decl (BitVec 64) :=
.function { name := "rlp_item_total_unchecked", inline := false, exported := false, params := [("p", Flapjack.Shape.one)], body := globalBody115_18, returnShape := (Flapjack.Shape.one) }
def globalOutput115 := Pancake.PanLang.declToHOL globalData115
end InitECandidate.Proofs.FrontendStages.Declarations
