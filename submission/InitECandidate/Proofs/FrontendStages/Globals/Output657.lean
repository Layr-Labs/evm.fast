import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data657
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate639
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody657_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody657_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "r"), none)) "fq_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "r"]

def globalBody657_2 : Prog (BitVec 64) :=
.seq globalBody657_0 globalBody657_1

def globalBody657_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "r"), none)) "fq_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def globalBody657_4 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody657_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "k")
        (Flapjack.Exp.var Flapjack.VarKind.local "i"),
      Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 1#64)) globalBody657_3 globalBody657_4

def globalBody657_6 : Prog (BitVec 64) :=
.seq globalBody657_2 globalBody657_5

def globalBody657_7 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "i")) globalBody657_6

def globalBody657_8 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "r")

def globalBody657_9 : Prog (BitVec 64) :=
.seq globalBody657_7 globalBody657_8

def globalBody657_10 : Prog (BitVec 64) :=
.decCall ("i") (Flapjack.Shape.one) ("bit_length64") ([Flapjack.Exp.var Flapjack.VarKind.local "k"]) globalBody657_9

def globalBody657_11 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody657_10

def globalData657 : Decl (BitVec 64) :=
.function { name := "fq_mul_small", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("k", Flapjack.Shape.one)], body := globalBody657_11, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput657 := Pancake.PanLang.declToHOL globalData657
end InitECandidate.Proofs.FrontendStages.Declarations
