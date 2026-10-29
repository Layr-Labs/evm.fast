import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data81
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate65
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody81_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "result"), none)) "u256_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "result", Flapjack.Exp.var Flapjack.VarKind.local "base"]

def globalBody81_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody81_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "bit") (Flapjack.Exp.const 1#64)) globalBody81_0 globalBody81_1

def globalBody81_3 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 1#64])

def globalBody81_4 : Prog (BitVec 64) :=
.seq globalBody81_2 globalBody81_3

def globalBody81_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "base"), none)) "u256_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "base", Flapjack.Exp.var Flapjack.VarKind.local "base"]

def globalBody81_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "t")
  (Flapjack.Exp.var Flapjack.VarKind.local "len")) globalBody81_5 globalBody81_1

def globalBody81_7 : Prog (BitVec 64) :=
.seq globalBody81_4 globalBody81_6

def globalBody81_8 : Prog (BitVec 64) :=
.decCall ("bit") (Flapjack.Shape.one) ("u256_bit") ([Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "t"]) globalBody81_7

def globalBody81_9 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "t")
  (Flapjack.Exp.var Flapjack.VarKind.local "len")) globalBody81_8

def globalBody81_10 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "result")

def globalBody81_11 : Prog (BitVec 64) :=
.seq globalBody81_9 globalBody81_10

def globalBody81_12 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody81_11

def globalBody81_13 : Prog (BitVec 64) :=
.decCall ("len") (Flapjack.Shape.one) ("u256_bit_length") ([Flapjack.Exp.var Flapjack.VarKind.local "b"]) globalBody81_12

def globalBody81_14 : Prog (BitVec 64) :=
.dec ("base") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.var Flapjack.VarKind.local "a") globalBody81_13

def globalBody81_15 : Prog (BitVec 64) :=
.dec ("result") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 1#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody81_14

def globalData81 : Decl (BitVec 64) :=
.function { name := "u256_exp", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody81_15, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput81 := Pancake.PanLang.declToHOL globalData81
end InitECandidate.Proofs.FrontendStages.Declarations
