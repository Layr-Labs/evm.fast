import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data800
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate784
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody800_0 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "out")
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def globalBody800_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody800_2 : Prog (BitVec 64) :=
.seq globalBody800_0 globalBody800_1

def globalBody800_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody800_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "z") (Flapjack.Exp.const 1#64)) globalBody800_2 globalBody800_3

def globalBody800_5 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "out") (Flapjack.Exp.var Flapjack.VarKind.local "d")

def globalBody800_6 : Prog (BitVec 64) :=
.seq globalBody800_5 globalBody800_1

def globalBody800_7 : Prog (BitVec 64) :=
.decCall ("d") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "v"]) globalBody800_6

def globalBody800_8 : Prog (BitVec 64) :=
.seq globalBody800_4 globalBody800_7

def globalBody800_9 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "v"]) globalBody800_8

def globalBody800_10 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 392#64]),
      Flapjack.Exp.const 1344#64])) globalBody800_9

def globalBody800_11 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 32#64]) globalBody800_10

def globalData800 : Decl (BitVec 64) :=
.function { name := "kzg_neg_scalar", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := globalBody800_11, returnShape := (Flapjack.Shape.one) }
def globalOutput800 := Pancake.PanLang.declToHOL globalData800
end InitECandidate.Proofs.FrontendStages.Declarations
