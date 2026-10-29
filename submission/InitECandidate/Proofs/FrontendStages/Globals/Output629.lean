import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data629
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate606
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody629_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "mm", Flapjack.Exp.const 8#64]]

def globalBody629_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "r",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "mm", Flapjack.Exp.const 8#64]],
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.op Flapjack.BinOp.sub
          [Flapjack.Exp.var Flapjack.VarKind.local "n", Flapjack.Exp.var Flapjack.VarKind.local "mm"],
        Flapjack.Exp.const 8#64]]

def globalBody629_2 : Prog (BitVec 64) :=
.seq globalBody629_0 globalBody629_1

def globalBody629_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody629_4 : Prog (BitVec 64) :=
.seq globalBody629_2 globalBody629_3

def globalBody629_5 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody629_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "mm")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody629_4 globalBody629_5

def globalBody629_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bn_divmnu"
  [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.var Flapjack.VarKind.local "r",
    Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "mm",
    Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.var Flapjack.VarKind.local "n",
    Flapjack.Exp.var Flapjack.VarKind.local "un", Flapjack.Exp.var Flapjack.VarKind.local "vn"]

def globalBody629_8 : Prog (BitVec 64) :=
.seq globalBody629_6 globalBody629_7

def globalBody629_9 : Prog (BitVec 64) :=
.seq globalBody629_8 globalBody629_3

def globalBody629_10 : Prog (BitVec 64) :=
.decCall ("mm") (Flapjack.Shape.one) ("digits_len") ([Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "m"]) globalBody629_9

def globalData629 : Decl (BitVec 64) :=
.function { name := "bn_mod", inline := false, exported := false, params := [("u", Flapjack.Shape.one), ("m", Flapjack.Shape.one), ("v", Flapjack.Shape.one), ("n", Flapjack.Shape.one),
  ("r", Flapjack.Shape.one), ("q", Flapjack.Shape.one), ("un", Flapjack.Shape.one), ("vn", Flapjack.Shape.one)], body := globalBody629_10, returnShape := (Flapjack.Shape.one) }
def globalOutput629 := Pancake.PanLang.declToHOL globalData629
end InitECandidate.Proofs.FrontendStages.Declarations
