import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data797
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate781
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody797_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "swu_g2"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "t"]

def globalBody797_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "iso_map_g2"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "p"]

def globalBody797_2 : Prog (BitVec 64) :=
.seq globalBody797_0 globalBody797_1

def globalBody797_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 392#64]),
        Flapjack.Exp.const 1632#64],
    Flapjack.Exp.const 10#64]

def globalBody797_4 : Prog (BitVec 64) :=
.seq globalBody797_2 globalBody797_3

def globalBody797_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody797_6 : Prog (BitVec 64) :=
.seq globalBody797_4 globalBody797_5

def globalBody797_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody797_8 : Prog (BitVec 64) :=
.seq globalBody797_6 globalBody797_7

def globalBody797_9 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) globalBody797_8

def globalBody797_10 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody797_9

def globalData797 : Decl (BitVec 64) :=
.function { name := "map_fp2_to_g2", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("t", Flapjack.Shape.one)], body := globalBody797_10, returnShape := (Flapjack.Shape.one) }
def globalOutput797 := Pancake.PanLang.declToHOL globalData797
end InitECandidate.Proofs.FrontendStages.Declarations
