import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data153
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate136
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody153_0 : Prog (BitVec 64) :=
Flapjack.Prog.call none "u256_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 18446744069414583343#64, Flapjack.Exp.const 18446744073709551615#64,
        Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 18446744073709551615#64]]

def globalBody153_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody153_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "lt") (Flapjack.Exp.const 0#64)) globalBody153_0 globalBody153_1

def globalBody153_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "a")

def globalBody153_4 : Prog (BitVec 64) :=
.seq globalBody153_2 globalBody153_3

def globalBody153_5 : Prog (BitVec 64) :=
.decCall ("lt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "a",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.const 18446744069414583343#64, Flapjack.Exp.const 18446744073709551615#64,
      Flapjack.Exp.const 18446744073709551615#64, Flapjack.Exp.const 18446744073709551615#64]]) globalBody153_4

def globalData153 : Decl (BitVec 64) :=
.function { name := "fp_reduce", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody153_5, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput153 := Pancake.PanLang.declToHOL globalData153
end InitECandidate.Proofs.FrontendStages.Declarations
