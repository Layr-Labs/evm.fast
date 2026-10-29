import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify796
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body812_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body812_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body812_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.global "bls_discount")
  (Flapjack.Exp.const 0#64)) body812_0 body812_1

def body812_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "bls_lib_init" []

def body812_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.global, "bls_discount"), none)) "alloc"
  [Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 256#64, Flapjack.Exp.const 8#64]]

def body812_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 1000#64)

def body812_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 949#64)

def body812_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 848#64)

def body812_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 797#64)

def body812_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 764#64)

def body812_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.const 750#64)

def body812_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.const 738#64)

def body812_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.const 728#64)

def body812_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.const 719#64)

def body812_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.const 712#64)

def body812_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.const 705#64)

def body812_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.const 698#64)

def body812_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 96#64])
  (Flapjack.Exp.const 692#64)

def body812_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.const 687#64)

def body812_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.const 682#64)

def body812_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.const 677#64)

def body812_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 128#64])
  (Flapjack.Exp.const 673#64)

def body812_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 136#64])
  (Flapjack.Exp.const 669#64)

def body812_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 144#64])
  (Flapjack.Exp.const 665#64)

def body812_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.const 661#64)

def body812_25 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.const 658#64)

def body812_26 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 168#64])
  (Flapjack.Exp.const 654#64)

def body812_27 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 176#64])
  (Flapjack.Exp.const 651#64)

def body812_28 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 184#64])
  (Flapjack.Exp.const 648#64)

def body812_29 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 192#64])
  (Flapjack.Exp.const 645#64)

def body812_30 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 200#64])
  (Flapjack.Exp.const 642#64)

def body812_31 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 208#64])
  (Flapjack.Exp.const 640#64)

def body812_32 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 216#64])
  (Flapjack.Exp.const 637#64)

def body812_33 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 224#64])
  (Flapjack.Exp.const 635#64)

def body812_34 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 232#64])
  (Flapjack.Exp.const 632#64)

def body812_35 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 240#64])
  (Flapjack.Exp.const 630#64)

def body812_36 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 248#64])
  (Flapjack.Exp.const 627#64)

def body812_37 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 256#64])
  (Flapjack.Exp.const 625#64)

def body812_38 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 264#64])
  (Flapjack.Exp.const 623#64)

def body812_39 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 272#64])
  (Flapjack.Exp.const 621#64)

def body812_40 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 280#64])
  (Flapjack.Exp.const 619#64)

def body812_41 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 288#64])
  (Flapjack.Exp.const 617#64)

def body812_42 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 296#64])
  (Flapjack.Exp.const 615#64)

def body812_43 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 304#64])
  (Flapjack.Exp.const 613#64)

def body812_44 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 312#64])
  (Flapjack.Exp.const 611#64)

def body812_45 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 320#64])
  (Flapjack.Exp.const 609#64)

def body812_46 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 328#64])
  (Flapjack.Exp.const 608#64)

def body812_47 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 336#64])
  (Flapjack.Exp.const 606#64)

def body812_48 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 344#64])
  (Flapjack.Exp.const 604#64)

def body812_49 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 352#64])
  (Flapjack.Exp.const 603#64)

def body812_50 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 360#64])
  (Flapjack.Exp.const 601#64)

def body812_51 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 368#64])
  (Flapjack.Exp.const 599#64)

def body812_52 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 376#64])
  (Flapjack.Exp.const 598#64)

def body812_53 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 384#64])
  (Flapjack.Exp.const 596#64)

def body812_54 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 392#64])
  (Flapjack.Exp.const 595#64)

def body812_55 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 400#64])
  (Flapjack.Exp.const 593#64)

def body812_56 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 408#64])
  (Flapjack.Exp.const 592#64)

def body812_57 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 416#64])
  (Flapjack.Exp.const 591#64)

def body812_58 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 424#64])
  (Flapjack.Exp.const 589#64)

def body812_59 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 432#64])
  (Flapjack.Exp.const 588#64)

def body812_60 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 440#64])
  (Flapjack.Exp.const 586#64)

def body812_61 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 448#64])
  (Flapjack.Exp.const 585#64)

def body812_62 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 456#64])
  (Flapjack.Exp.const 584#64)

def body812_63 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 464#64])
  (Flapjack.Exp.const 582#64)

def body812_64 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 472#64])
  (Flapjack.Exp.const 581#64)

def body812_65 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 480#64])
  (Flapjack.Exp.const 580#64)

def body812_66 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 488#64])
  (Flapjack.Exp.const 579#64)

def body812_67 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 496#64])
  (Flapjack.Exp.const 577#64)

def body812_68 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 504#64])
  (Flapjack.Exp.const 576#64)

def body812_69 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 512#64])
  (Flapjack.Exp.const 575#64)

def body812_70 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 520#64])
  (Flapjack.Exp.const 574#64)

def body812_71 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 528#64])
  (Flapjack.Exp.const 573#64)

def body812_72 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 536#64])
  (Flapjack.Exp.const 572#64)

def body812_73 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 544#64])
  (Flapjack.Exp.const 570#64)

def body812_74 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 552#64])
  (Flapjack.Exp.const 569#64)

def body812_75 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 560#64])
  (Flapjack.Exp.const 568#64)

def body812_76 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 568#64])
  (Flapjack.Exp.const 567#64)

def body812_77 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 576#64])
  (Flapjack.Exp.const 566#64)

def body812_78 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 584#64])
  (Flapjack.Exp.const 565#64)

def body812_79 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 592#64])
  (Flapjack.Exp.const 564#64)

def body812_80 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 600#64])
  (Flapjack.Exp.const 563#64)

def body812_81 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 608#64])
  (Flapjack.Exp.const 562#64)

def body812_82 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 616#64])
  (Flapjack.Exp.const 561#64)

def body812_83 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 624#64])
  (Flapjack.Exp.const 560#64)

def body812_84 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 632#64])
  (Flapjack.Exp.const 559#64)

def body812_85 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 640#64])
  (Flapjack.Exp.const 558#64)

def body812_86 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 648#64])
  (Flapjack.Exp.const 557#64)

def body812_87 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 656#64])
  (Flapjack.Exp.const 556#64)

def body812_88 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 664#64])
  (Flapjack.Exp.const 555#64)

def body812_89 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 672#64])
  (Flapjack.Exp.const 554#64)

def body812_90 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 680#64])
  (Flapjack.Exp.const 553#64)

def body812_91 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 688#64])
  (Flapjack.Exp.const 552#64)

def body812_92 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 696#64])
  (Flapjack.Exp.const 551#64)

def body812_93 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 704#64])
  (Flapjack.Exp.const 550#64)

def body812_94 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 712#64])
  (Flapjack.Exp.const 549#64)

def body812_95 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 720#64])
  (Flapjack.Exp.const 548#64)

def body812_96 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 728#64])
  (Flapjack.Exp.const 547#64)

def body812_97 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 736#64])
  (Flapjack.Exp.const 547#64)

def body812_98 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 744#64])
  (Flapjack.Exp.const 546#64)

def body812_99 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 752#64])
  (Flapjack.Exp.const 545#64)

def body812_100 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 760#64])
  (Flapjack.Exp.const 544#64)

def body812_101 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 768#64])
  (Flapjack.Exp.const 543#64)

def body812_102 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 776#64])
  (Flapjack.Exp.const 542#64)

def body812_103 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 784#64])
  (Flapjack.Exp.const 541#64)

def body812_104 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 792#64])
  (Flapjack.Exp.const 540#64)

def body812_105 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 800#64])
  (Flapjack.Exp.const 540#64)

def body812_106 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 808#64])
  (Flapjack.Exp.const 539#64)

def body812_107 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 816#64])
  (Flapjack.Exp.const 538#64)

def body812_108 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 824#64])
  (Flapjack.Exp.const 537#64)

def body812_109 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 832#64])
  (Flapjack.Exp.const 536#64)

def body812_110 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 840#64])
  (Flapjack.Exp.const 536#64)

def body812_111 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 848#64])
  (Flapjack.Exp.const 535#64)

def body812_112 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 856#64])
  (Flapjack.Exp.const 534#64)

def body812_113 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 864#64])
  (Flapjack.Exp.const 533#64)

def body812_114 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 872#64])
  (Flapjack.Exp.const 532#64)

def body812_115 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 880#64])
  (Flapjack.Exp.const 532#64)

def body812_116 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 888#64])
  (Flapjack.Exp.const 531#64)

def body812_117 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 896#64])
  (Flapjack.Exp.const 530#64)

def body812_118 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 904#64])
  (Flapjack.Exp.const 529#64)

def body812_119 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 912#64])
  (Flapjack.Exp.const 528#64)

def body812_120 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 920#64])
  (Flapjack.Exp.const 528#64)

def body812_121 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 928#64])
  (Flapjack.Exp.const 527#64)

def body812_122 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 936#64])
  (Flapjack.Exp.const 526#64)

def body812_123 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 944#64])
  (Flapjack.Exp.const 525#64)

def body812_124 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 952#64])
  (Flapjack.Exp.const 525#64)

def body812_125 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 960#64])
  (Flapjack.Exp.const 524#64)

def body812_126 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 968#64])
  (Flapjack.Exp.const 523#64)

def body812_127 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 976#64])
  (Flapjack.Exp.const 522#64)

def body812_128 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 984#64])
  (Flapjack.Exp.const 522#64)

def body812_129 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 992#64])
  (Flapjack.Exp.const 521#64)

def body812_130 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1000#64])
  (Flapjack.Exp.const 520#64)

def body812_131 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1008#64])
  (Flapjack.Exp.const 520#64)

def body812_132 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1016#64])
  (Flapjack.Exp.const 519#64)

def body812_133 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1024#64])
  (Flapjack.Exp.const 1000#64)

def body812_134 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1032#64])
  (Flapjack.Exp.const 1000#64)

def body812_135 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1040#64])
  (Flapjack.Exp.const 923#64)

def body812_136 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1048#64])
  (Flapjack.Exp.const 884#64)

def body812_137 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1056#64])
  (Flapjack.Exp.const 855#64)

def body812_138 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1064#64])
  (Flapjack.Exp.const 832#64)

def body812_139 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1072#64])
  (Flapjack.Exp.const 812#64)

def body812_140 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1080#64])
  (Flapjack.Exp.const 796#64)

def body812_141 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1088#64])
  (Flapjack.Exp.const 782#64)

def body812_142 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1096#64])
  (Flapjack.Exp.const 770#64)

def body812_143 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1104#64])
  (Flapjack.Exp.const 759#64)

def body812_144 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1112#64])
  (Flapjack.Exp.const 749#64)

def body812_145 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1120#64])
  (Flapjack.Exp.const 740#64)

def body812_146 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1128#64])
  (Flapjack.Exp.const 732#64)

def body812_147 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1136#64])
  (Flapjack.Exp.const 724#64)

def body812_148 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1144#64])
  (Flapjack.Exp.const 717#64)

def body812_149 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1152#64])
  (Flapjack.Exp.const 711#64)

def body812_150 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1160#64])
  (Flapjack.Exp.const 704#64)

def body812_151 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1168#64])
  (Flapjack.Exp.const 699#64)

def body812_152 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1176#64])
  (Flapjack.Exp.const 693#64)

def body812_153 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1184#64])
  (Flapjack.Exp.const 688#64)

def body812_154 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1192#64])
  (Flapjack.Exp.const 683#64)

def body812_155 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1200#64])
  (Flapjack.Exp.const 679#64)

def body812_156 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1208#64])
  (Flapjack.Exp.const 674#64)

def body812_157 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1216#64])
  (Flapjack.Exp.const 670#64)

def body812_158 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1224#64])
  (Flapjack.Exp.const 666#64)

def body812_159 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1232#64])
  (Flapjack.Exp.const 663#64)

def body812_160 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1240#64])
  (Flapjack.Exp.const 659#64)

def body812_161 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1248#64])
  (Flapjack.Exp.const 655#64)

def body812_162 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1256#64])
  (Flapjack.Exp.const 652#64)

def body812_163 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1264#64])
  (Flapjack.Exp.const 649#64)

def body812_164 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1272#64])
  (Flapjack.Exp.const 646#64)

def body812_165 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1280#64])
  (Flapjack.Exp.const 643#64)

def body812_166 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1288#64])
  (Flapjack.Exp.const 640#64)

def body812_167 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1296#64])
  (Flapjack.Exp.const 637#64)

def body812_168 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1304#64])
  (Flapjack.Exp.const 634#64)

def body812_169 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1312#64])
  (Flapjack.Exp.const 632#64)

def body812_170 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1320#64])
  (Flapjack.Exp.const 629#64)

def body812_171 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1328#64])
  (Flapjack.Exp.const 627#64)

def body812_172 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1336#64])
  (Flapjack.Exp.const 624#64)

def body812_173 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1344#64])
  (Flapjack.Exp.const 622#64)

def body812_174 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1352#64])
  (Flapjack.Exp.const 620#64)

def body812_175 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1360#64])
  (Flapjack.Exp.const 618#64)

def body812_176 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1368#64])
  (Flapjack.Exp.const 615#64)

def body812_177 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1376#64])
  (Flapjack.Exp.const 613#64)

def body812_178 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1384#64])
  (Flapjack.Exp.const 611#64)

def body812_179 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1392#64])
  (Flapjack.Exp.const 609#64)

def body812_180 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1400#64])
  (Flapjack.Exp.const 607#64)

def body812_181 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1408#64])
  (Flapjack.Exp.const 606#64)

def body812_182 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1416#64])
  (Flapjack.Exp.const 604#64)

def body812_183 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1424#64])
  (Flapjack.Exp.const 602#64)

def body812_184 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1432#64])
  (Flapjack.Exp.const 600#64)

def body812_185 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1440#64])
  (Flapjack.Exp.const 598#64)

def body812_186 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1448#64])
  (Flapjack.Exp.const 597#64)

def body812_187 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1456#64])
  (Flapjack.Exp.const 595#64)

def body812_188 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1464#64])
  (Flapjack.Exp.const 593#64)

def body812_189 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1472#64])
  (Flapjack.Exp.const 592#64)

def body812_190 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1480#64])
  (Flapjack.Exp.const 590#64)

def body812_191 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1488#64])
  (Flapjack.Exp.const 589#64)

def body812_192 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1496#64])
  (Flapjack.Exp.const 587#64)

def body812_193 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1504#64])
  (Flapjack.Exp.const 586#64)

def body812_194 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1512#64])
  (Flapjack.Exp.const 584#64)

def body812_195 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1520#64])
  (Flapjack.Exp.const 583#64)

def body812_196 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1528#64])
  (Flapjack.Exp.const 582#64)

def body812_197 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1536#64])
  (Flapjack.Exp.const 580#64)

def body812_198 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1544#64])
  (Flapjack.Exp.const 579#64)

def body812_199 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1552#64])
  (Flapjack.Exp.const 578#64)

def body812_200 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1560#64])
  (Flapjack.Exp.const 576#64)

def body812_201 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1568#64])
  (Flapjack.Exp.const 575#64)

def body812_202 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1576#64])
  (Flapjack.Exp.const 574#64)

def body812_203 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1584#64])
  (Flapjack.Exp.const 573#64)

def body812_204 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1592#64])
  (Flapjack.Exp.const 571#64)

def body812_205 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1600#64])
  (Flapjack.Exp.const 570#64)

def body812_206 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1608#64])
  (Flapjack.Exp.const 569#64)

def body812_207 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1616#64])
  (Flapjack.Exp.const 568#64)

def body812_208 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1624#64])
  (Flapjack.Exp.const 567#64)

def body812_209 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1632#64])
  (Flapjack.Exp.const 566#64)

def body812_210 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1640#64])
  (Flapjack.Exp.const 565#64)

def body812_211 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1648#64])
  (Flapjack.Exp.const 563#64)

def body812_212 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1656#64])
  (Flapjack.Exp.const 562#64)

def body812_213 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1664#64])
  (Flapjack.Exp.const 561#64)

def body812_214 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1672#64])
  (Flapjack.Exp.const 560#64)

def body812_215 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1680#64])
  (Flapjack.Exp.const 559#64)

def body812_216 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1688#64])
  (Flapjack.Exp.const 558#64)

def body812_217 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1696#64])
  (Flapjack.Exp.const 557#64)

def body812_218 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1704#64])
  (Flapjack.Exp.const 556#64)

def body812_219 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1712#64])
  (Flapjack.Exp.const 555#64)

def body812_220 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1720#64])
  (Flapjack.Exp.const 554#64)

def body812_221 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1728#64])
  (Flapjack.Exp.const 553#64)

def body812_222 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1736#64])
  (Flapjack.Exp.const 552#64)

def body812_223 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1744#64])
  (Flapjack.Exp.const 552#64)

def body812_224 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1752#64])
  (Flapjack.Exp.const 551#64)

def body812_225 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1760#64])
  (Flapjack.Exp.const 550#64)

def body812_226 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1768#64])
  (Flapjack.Exp.const 549#64)

def body812_227 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1776#64])
  (Flapjack.Exp.const 548#64)

def body812_228 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1784#64])
  (Flapjack.Exp.const 547#64)

def body812_229 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1792#64])
  (Flapjack.Exp.const 546#64)

def body812_230 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1800#64])
  (Flapjack.Exp.const 545#64)

def body812_231 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1808#64])
  (Flapjack.Exp.const 545#64)

def body812_232 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1816#64])
  (Flapjack.Exp.const 544#64)

def body812_233 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1824#64])
  (Flapjack.Exp.const 543#64)

def body812_234 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1832#64])
  (Flapjack.Exp.const 542#64)

def body812_235 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1840#64])
  (Flapjack.Exp.const 541#64)

def body812_236 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1848#64])
  (Flapjack.Exp.const 541#64)

def body812_237 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1856#64])
  (Flapjack.Exp.const 540#64)

def body812_238 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1864#64])
  (Flapjack.Exp.const 539#64)

def body812_239 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1872#64])
  (Flapjack.Exp.const 538#64)

def body812_240 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1880#64])
  (Flapjack.Exp.const 537#64)

def body812_241 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1888#64])
  (Flapjack.Exp.const 537#64)

def body812_242 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1896#64])
  (Flapjack.Exp.const 536#64)

def body812_243 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1904#64])
  (Flapjack.Exp.const 535#64)

def body812_244 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1912#64])
  (Flapjack.Exp.const 535#64)

def body812_245 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1920#64])
  (Flapjack.Exp.const 534#64)

def body812_246 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1928#64])
  (Flapjack.Exp.const 533#64)

def body812_247 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1936#64])
  (Flapjack.Exp.const 532#64)

def body812_248 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1944#64])
  (Flapjack.Exp.const 532#64)

def body812_249 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1952#64])
  (Flapjack.Exp.const 531#64)

def body812_250 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1960#64])
  (Flapjack.Exp.const 530#64)

def body812_251 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1968#64])
  (Flapjack.Exp.const 530#64)

def body812_252 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1976#64])
  (Flapjack.Exp.const 529#64)

def body812_253 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1984#64])
  (Flapjack.Exp.const 528#64)

def body812_254 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 1992#64])
  (Flapjack.Exp.const 528#64)

def body812_255 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 2000#64])
  (Flapjack.Exp.const 527#64)

def body812_256 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 2008#64])
  (Flapjack.Exp.const 526#64)

def body812_257 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 2016#64])
  (Flapjack.Exp.const 526#64)

def body812_258 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 2024#64])
  (Flapjack.Exp.const 525#64)

def body812_259 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 2032#64])
  (Flapjack.Exp.const 524#64)

def body812_260 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.global "bls_discount", Flapjack.Exp.const 2040#64])
  (Flapjack.Exp.const 524#64)

def body812_261 : Prog (BitVec 64) :=
.seq body812_260 body812_0

def body812_262 : Prog (BitVec 64) :=
.seq body812_259 body812_261

def body812_263 : Prog (BitVec 64) :=
.seq body812_258 body812_262

def body812_264 : Prog (BitVec 64) :=
.seq body812_257 body812_263

def body812_265 : Prog (BitVec 64) :=
.seq body812_256 body812_264

def body812_266 : Prog (BitVec 64) :=
.seq body812_255 body812_265

def body812_267 : Prog (BitVec 64) :=
.seq body812_254 body812_266

def body812_268 : Prog (BitVec 64) :=
.seq body812_253 body812_267

def body812_269 : Prog (BitVec 64) :=
.seq body812_252 body812_268

def body812_270 : Prog (BitVec 64) :=
.seq body812_251 body812_269

def body812_271 : Prog (BitVec 64) :=
.seq body812_250 body812_270

def body812_272 : Prog (BitVec 64) :=
.seq body812_249 body812_271

def body812_273 : Prog (BitVec 64) :=
.seq body812_248 body812_272

def body812_274 : Prog (BitVec 64) :=
.seq body812_247 body812_273

def body812_275 : Prog (BitVec 64) :=
.seq body812_246 body812_274

def body812_276 : Prog (BitVec 64) :=
.seq body812_245 body812_275

def body812_277 : Prog (BitVec 64) :=
.seq body812_244 body812_276

def body812_278 : Prog (BitVec 64) :=
.seq body812_243 body812_277

def body812_279 : Prog (BitVec 64) :=
.seq body812_242 body812_278

def body812_280 : Prog (BitVec 64) :=
.seq body812_241 body812_279

def body812_281 : Prog (BitVec 64) :=
.seq body812_240 body812_280

def body812_282 : Prog (BitVec 64) :=
.seq body812_239 body812_281

def body812_283 : Prog (BitVec 64) :=
.seq body812_238 body812_282

def body812_284 : Prog (BitVec 64) :=
.seq body812_237 body812_283

def body812_285 : Prog (BitVec 64) :=
.seq body812_236 body812_284

def body812_286 : Prog (BitVec 64) :=
.seq body812_235 body812_285

def body812_287 : Prog (BitVec 64) :=
.seq body812_234 body812_286

def body812_288 : Prog (BitVec 64) :=
.seq body812_233 body812_287

def body812_289 : Prog (BitVec 64) :=
.seq body812_232 body812_288

def body812_290 : Prog (BitVec 64) :=
.seq body812_231 body812_289

def body812_291 : Prog (BitVec 64) :=
.seq body812_230 body812_290

def body812_292 : Prog (BitVec 64) :=
.seq body812_229 body812_291

def body812_293 : Prog (BitVec 64) :=
.seq body812_228 body812_292

def body812_294 : Prog (BitVec 64) :=
.seq body812_227 body812_293

def body812_295 : Prog (BitVec 64) :=
.seq body812_226 body812_294

def body812_296 : Prog (BitVec 64) :=
.seq body812_225 body812_295

def body812_297 : Prog (BitVec 64) :=
.seq body812_224 body812_296

def body812_298 : Prog (BitVec 64) :=
.seq body812_223 body812_297

def body812_299 : Prog (BitVec 64) :=
.seq body812_222 body812_298

def body812_300 : Prog (BitVec 64) :=
.seq body812_221 body812_299

def body812_301 : Prog (BitVec 64) :=
.seq body812_220 body812_300

def body812_302 : Prog (BitVec 64) :=
.seq body812_219 body812_301

def body812_303 : Prog (BitVec 64) :=
.seq body812_218 body812_302

def body812_304 : Prog (BitVec 64) :=
.seq body812_217 body812_303

def body812_305 : Prog (BitVec 64) :=
.seq body812_216 body812_304

def body812_306 : Prog (BitVec 64) :=
.seq body812_215 body812_305

def body812_307 : Prog (BitVec 64) :=
.seq body812_214 body812_306

def body812_308 : Prog (BitVec 64) :=
.seq body812_213 body812_307

def body812_309 : Prog (BitVec 64) :=
.seq body812_212 body812_308

def body812_310 : Prog (BitVec 64) :=
.seq body812_211 body812_309

def body812_311 : Prog (BitVec 64) :=
.seq body812_210 body812_310

def body812_312 : Prog (BitVec 64) :=
.seq body812_209 body812_311

def body812_313 : Prog (BitVec 64) :=
.seq body812_208 body812_312

def body812_314 : Prog (BitVec 64) :=
.seq body812_207 body812_313

def body812_315 : Prog (BitVec 64) :=
.seq body812_206 body812_314

def body812_316 : Prog (BitVec 64) :=
.seq body812_205 body812_315

def body812_317 : Prog (BitVec 64) :=
.seq body812_204 body812_316

def body812_318 : Prog (BitVec 64) :=
.seq body812_203 body812_317

def body812_319 : Prog (BitVec 64) :=
.seq body812_202 body812_318

def body812_320 : Prog (BitVec 64) :=
.seq body812_201 body812_319

def body812_321 : Prog (BitVec 64) :=
.seq body812_200 body812_320

def body812_322 : Prog (BitVec 64) :=
.seq body812_199 body812_321

def body812_323 : Prog (BitVec 64) :=
.seq body812_198 body812_322

def body812_324 : Prog (BitVec 64) :=
.seq body812_197 body812_323

def body812_325 : Prog (BitVec 64) :=
.seq body812_196 body812_324

def body812_326 : Prog (BitVec 64) :=
.seq body812_195 body812_325

def body812_327 : Prog (BitVec 64) :=
.seq body812_194 body812_326

def body812_328 : Prog (BitVec 64) :=
.seq body812_193 body812_327

def body812_329 : Prog (BitVec 64) :=
.seq body812_192 body812_328

def body812_330 : Prog (BitVec 64) :=
.seq body812_191 body812_329

def body812_331 : Prog (BitVec 64) :=
.seq body812_190 body812_330

def body812_332 : Prog (BitVec 64) :=
.seq body812_189 body812_331

def body812_333 : Prog (BitVec 64) :=
.seq body812_188 body812_332

def body812_334 : Prog (BitVec 64) :=
.seq body812_187 body812_333

def body812_335 : Prog (BitVec 64) :=
.seq body812_186 body812_334

def body812_336 : Prog (BitVec 64) :=
.seq body812_185 body812_335

def body812_337 : Prog (BitVec 64) :=
.seq body812_184 body812_336

def body812_338 : Prog (BitVec 64) :=
.seq body812_183 body812_337

def body812_339 : Prog (BitVec 64) :=
.seq body812_182 body812_338

def body812_340 : Prog (BitVec 64) :=
.seq body812_181 body812_339

def body812_341 : Prog (BitVec 64) :=
.seq body812_180 body812_340

def body812_342 : Prog (BitVec 64) :=
.seq body812_179 body812_341

def body812_343 : Prog (BitVec 64) :=
.seq body812_178 body812_342

def body812_344 : Prog (BitVec 64) :=
.seq body812_177 body812_343

def body812_345 : Prog (BitVec 64) :=
.seq body812_176 body812_344

def body812_346 : Prog (BitVec 64) :=
.seq body812_175 body812_345

def body812_347 : Prog (BitVec 64) :=
.seq body812_174 body812_346

def body812_348 : Prog (BitVec 64) :=
.seq body812_173 body812_347

def body812_349 : Prog (BitVec 64) :=
.seq body812_172 body812_348

def body812_350 : Prog (BitVec 64) :=
.seq body812_171 body812_349

def body812_351 : Prog (BitVec 64) :=
.seq body812_170 body812_350

def body812_352 : Prog (BitVec 64) :=
.seq body812_169 body812_351

def body812_353 : Prog (BitVec 64) :=
.seq body812_168 body812_352

def body812_354 : Prog (BitVec 64) :=
.seq body812_167 body812_353

def body812_355 : Prog (BitVec 64) :=
.seq body812_166 body812_354

def body812_356 : Prog (BitVec 64) :=
.seq body812_165 body812_355

def body812_357 : Prog (BitVec 64) :=
.seq body812_164 body812_356

def body812_358 : Prog (BitVec 64) :=
.seq body812_163 body812_357

def body812_359 : Prog (BitVec 64) :=
.seq body812_162 body812_358

def body812_360 : Prog (BitVec 64) :=
.seq body812_161 body812_359

def body812_361 : Prog (BitVec 64) :=
.seq body812_160 body812_360

def body812_362 : Prog (BitVec 64) :=
.seq body812_159 body812_361

def body812_363 : Prog (BitVec 64) :=
.seq body812_158 body812_362

def body812_364 : Prog (BitVec 64) :=
.seq body812_157 body812_363

def body812_365 : Prog (BitVec 64) :=
.seq body812_156 body812_364

def body812_366 : Prog (BitVec 64) :=
.seq body812_155 body812_365

def body812_367 : Prog (BitVec 64) :=
.seq body812_154 body812_366

def body812_368 : Prog (BitVec 64) :=
.seq body812_153 body812_367

def body812_369 : Prog (BitVec 64) :=
.seq body812_152 body812_368

def body812_370 : Prog (BitVec 64) :=
.seq body812_151 body812_369

def body812_371 : Prog (BitVec 64) :=
.seq body812_150 body812_370

def body812_372 : Prog (BitVec 64) :=
.seq body812_149 body812_371

def body812_373 : Prog (BitVec 64) :=
.seq body812_148 body812_372

def body812_374 : Prog (BitVec 64) :=
.seq body812_147 body812_373

def body812_375 : Prog (BitVec 64) :=
.seq body812_146 body812_374

def body812_376 : Prog (BitVec 64) :=
.seq body812_145 body812_375

def body812_377 : Prog (BitVec 64) :=
.seq body812_144 body812_376

def body812_378 : Prog (BitVec 64) :=
.seq body812_143 body812_377

def body812_379 : Prog (BitVec 64) :=
.seq body812_142 body812_378

def body812_380 : Prog (BitVec 64) :=
.seq body812_141 body812_379

def body812_381 : Prog (BitVec 64) :=
.seq body812_140 body812_380

def body812_382 : Prog (BitVec 64) :=
.seq body812_139 body812_381

def body812_383 : Prog (BitVec 64) :=
.seq body812_138 body812_382

def body812_384 : Prog (BitVec 64) :=
.seq body812_137 body812_383

def body812_385 : Prog (BitVec 64) :=
.seq body812_136 body812_384

def body812_386 : Prog (BitVec 64) :=
.seq body812_135 body812_385

def body812_387 : Prog (BitVec 64) :=
.seq body812_134 body812_386

def body812_388 : Prog (BitVec 64) :=
.seq body812_133 body812_387

def body812_389 : Prog (BitVec 64) :=
.seq body812_132 body812_388

def body812_390 : Prog (BitVec 64) :=
.seq body812_131 body812_389

def body812_391 : Prog (BitVec 64) :=
.seq body812_130 body812_390

def body812_392 : Prog (BitVec 64) :=
.seq body812_129 body812_391

def body812_393 : Prog (BitVec 64) :=
.seq body812_128 body812_392

def body812_394 : Prog (BitVec 64) :=
.seq body812_127 body812_393

def body812_395 : Prog (BitVec 64) :=
.seq body812_126 body812_394

def body812_396 : Prog (BitVec 64) :=
.seq body812_125 body812_395

def body812_397 : Prog (BitVec 64) :=
.seq body812_124 body812_396

def body812_398 : Prog (BitVec 64) :=
.seq body812_123 body812_397

def body812_399 : Prog (BitVec 64) :=
.seq body812_122 body812_398

def body812_400 : Prog (BitVec 64) :=
.seq body812_121 body812_399

def body812_401 : Prog (BitVec 64) :=
.seq body812_120 body812_400

def body812_402 : Prog (BitVec 64) :=
.seq body812_119 body812_401

def body812_403 : Prog (BitVec 64) :=
.seq body812_118 body812_402

def body812_404 : Prog (BitVec 64) :=
.seq body812_117 body812_403

def body812_405 : Prog (BitVec 64) :=
.seq body812_116 body812_404

def body812_406 : Prog (BitVec 64) :=
.seq body812_115 body812_405

def body812_407 : Prog (BitVec 64) :=
.seq body812_114 body812_406

def body812_408 : Prog (BitVec 64) :=
.seq body812_113 body812_407

def body812_409 : Prog (BitVec 64) :=
.seq body812_112 body812_408

def body812_410 : Prog (BitVec 64) :=
.seq body812_111 body812_409

def body812_411 : Prog (BitVec 64) :=
.seq body812_110 body812_410

def body812_412 : Prog (BitVec 64) :=
.seq body812_109 body812_411

def body812_413 : Prog (BitVec 64) :=
.seq body812_108 body812_412

def body812_414 : Prog (BitVec 64) :=
.seq body812_107 body812_413

def body812_415 : Prog (BitVec 64) :=
.seq body812_106 body812_414

def body812_416 : Prog (BitVec 64) :=
.seq body812_105 body812_415

def body812_417 : Prog (BitVec 64) :=
.seq body812_104 body812_416

def body812_418 : Prog (BitVec 64) :=
.seq body812_103 body812_417

def body812_419 : Prog (BitVec 64) :=
.seq body812_102 body812_418

def body812_420 : Prog (BitVec 64) :=
.seq body812_101 body812_419

def body812_421 : Prog (BitVec 64) :=
.seq body812_100 body812_420

def body812_422 : Prog (BitVec 64) :=
.seq body812_99 body812_421

def body812_423 : Prog (BitVec 64) :=
.seq body812_98 body812_422

def body812_424 : Prog (BitVec 64) :=
.seq body812_97 body812_423

def body812_425 : Prog (BitVec 64) :=
.seq body812_96 body812_424

def body812_426 : Prog (BitVec 64) :=
.seq body812_95 body812_425

def body812_427 : Prog (BitVec 64) :=
.seq body812_94 body812_426

def body812_428 : Prog (BitVec 64) :=
.seq body812_93 body812_427

def body812_429 : Prog (BitVec 64) :=
.seq body812_92 body812_428

def body812_430 : Prog (BitVec 64) :=
.seq body812_91 body812_429

def body812_431 : Prog (BitVec 64) :=
.seq body812_90 body812_430

def body812_432 : Prog (BitVec 64) :=
.seq body812_89 body812_431

def body812_433 : Prog (BitVec 64) :=
.seq body812_88 body812_432

def body812_434 : Prog (BitVec 64) :=
.seq body812_87 body812_433

def body812_435 : Prog (BitVec 64) :=
.seq body812_86 body812_434

def body812_436 : Prog (BitVec 64) :=
.seq body812_85 body812_435

def body812_437 : Prog (BitVec 64) :=
.seq body812_84 body812_436

def body812_438 : Prog (BitVec 64) :=
.seq body812_83 body812_437

def body812_439 : Prog (BitVec 64) :=
.seq body812_82 body812_438

def body812_440 : Prog (BitVec 64) :=
.seq body812_81 body812_439

def body812_441 : Prog (BitVec 64) :=
.seq body812_80 body812_440

def body812_442 : Prog (BitVec 64) :=
.seq body812_79 body812_441

def body812_443 : Prog (BitVec 64) :=
.seq body812_78 body812_442

def body812_444 : Prog (BitVec 64) :=
.seq body812_77 body812_443

def body812_445 : Prog (BitVec 64) :=
.seq body812_76 body812_444

def body812_446 : Prog (BitVec 64) :=
.seq body812_75 body812_445

def body812_447 : Prog (BitVec 64) :=
.seq body812_74 body812_446

def body812_448 : Prog (BitVec 64) :=
.seq body812_73 body812_447

def body812_449 : Prog (BitVec 64) :=
.seq body812_72 body812_448

def body812_450 : Prog (BitVec 64) :=
.seq body812_71 body812_449

def body812_451 : Prog (BitVec 64) :=
.seq body812_70 body812_450

def body812_452 : Prog (BitVec 64) :=
.seq body812_69 body812_451

def body812_453 : Prog (BitVec 64) :=
.seq body812_68 body812_452

def body812_454 : Prog (BitVec 64) :=
.seq body812_67 body812_453

def body812_455 : Prog (BitVec 64) :=
.seq body812_66 body812_454

def body812_456 : Prog (BitVec 64) :=
.seq body812_65 body812_455

def body812_457 : Prog (BitVec 64) :=
.seq body812_64 body812_456

def body812_458 : Prog (BitVec 64) :=
.seq body812_63 body812_457

def body812_459 : Prog (BitVec 64) :=
.seq body812_62 body812_458

def body812_460 : Prog (BitVec 64) :=
.seq body812_61 body812_459

def body812_461 : Prog (BitVec 64) :=
.seq body812_60 body812_460

def body812_462 : Prog (BitVec 64) :=
.seq body812_59 body812_461

def body812_463 : Prog (BitVec 64) :=
.seq body812_58 body812_462

def body812_464 : Prog (BitVec 64) :=
.seq body812_57 body812_463

def body812_465 : Prog (BitVec 64) :=
.seq body812_56 body812_464

def body812_466 : Prog (BitVec 64) :=
.seq body812_55 body812_465

def body812_467 : Prog (BitVec 64) :=
.seq body812_54 body812_466

def body812_468 : Prog (BitVec 64) :=
.seq body812_53 body812_467

def body812_469 : Prog (BitVec 64) :=
.seq body812_52 body812_468

def body812_470 : Prog (BitVec 64) :=
.seq body812_51 body812_469

def body812_471 : Prog (BitVec 64) :=
.seq body812_50 body812_470

def body812_472 : Prog (BitVec 64) :=
.seq body812_49 body812_471

def body812_473 : Prog (BitVec 64) :=
.seq body812_48 body812_472

def body812_474 : Prog (BitVec 64) :=
.seq body812_47 body812_473

def body812_475 : Prog (BitVec 64) :=
.seq body812_46 body812_474

def body812_476 : Prog (BitVec 64) :=
.seq body812_45 body812_475

def body812_477 : Prog (BitVec 64) :=
.seq body812_44 body812_476

def body812_478 : Prog (BitVec 64) :=
.seq body812_43 body812_477

def body812_479 : Prog (BitVec 64) :=
.seq body812_42 body812_478

def body812_480 : Prog (BitVec 64) :=
.seq body812_41 body812_479

def body812_481 : Prog (BitVec 64) :=
.seq body812_40 body812_480

def body812_482 : Prog (BitVec 64) :=
.seq body812_39 body812_481

def body812_483 : Prog (BitVec 64) :=
.seq body812_38 body812_482

def body812_484 : Prog (BitVec 64) :=
.seq body812_37 body812_483

def body812_485 : Prog (BitVec 64) :=
.seq body812_36 body812_484

def body812_486 : Prog (BitVec 64) :=
.seq body812_35 body812_485

def body812_487 : Prog (BitVec 64) :=
.seq body812_34 body812_486

def body812_488 : Prog (BitVec 64) :=
.seq body812_33 body812_487

def body812_489 : Prog (BitVec 64) :=
.seq body812_32 body812_488

def body812_490 : Prog (BitVec 64) :=
.seq body812_31 body812_489

def body812_491 : Prog (BitVec 64) :=
.seq body812_30 body812_490

def body812_492 : Prog (BitVec 64) :=
.seq body812_29 body812_491

def body812_493 : Prog (BitVec 64) :=
.seq body812_28 body812_492

def body812_494 : Prog (BitVec 64) :=
.seq body812_27 body812_493

def body812_495 : Prog (BitVec 64) :=
.seq body812_26 body812_494

def body812_496 : Prog (BitVec 64) :=
.seq body812_25 body812_495

def body812_497 : Prog (BitVec 64) :=
.seq body812_24 body812_496

def body812_498 : Prog (BitVec 64) :=
.seq body812_23 body812_497

def body812_499 : Prog (BitVec 64) :=
.seq body812_22 body812_498

def body812_500 : Prog (BitVec 64) :=
.seq body812_21 body812_499

def body812_501 : Prog (BitVec 64) :=
.seq body812_20 body812_500

def body812_502 : Prog (BitVec 64) :=
.seq body812_19 body812_501

def body812_503 : Prog (BitVec 64) :=
.seq body812_18 body812_502

def body812_504 : Prog (BitVec 64) :=
.seq body812_17 body812_503

def body812_505 : Prog (BitVec 64) :=
.seq body812_16 body812_504

def body812_506 : Prog (BitVec 64) :=
.seq body812_15 body812_505

def body812_507 : Prog (BitVec 64) :=
.seq body812_14 body812_506

def body812_508 : Prog (BitVec 64) :=
.seq body812_13 body812_507

def body812_509 : Prog (BitVec 64) :=
.seq body812_12 body812_508

def body812_510 : Prog (BitVec 64) :=
.seq body812_11 body812_509

def body812_511 : Prog (BitVec 64) :=
.seq body812_10 body812_510

def body812_512 : Prog (BitVec 64) :=
.seq body812_9 body812_511

def body812_513 : Prog (BitVec 64) :=
.seq body812_8 body812_512

def body812_514 : Prog (BitVec 64) :=
.seq body812_7 body812_513

def body812_515 : Prog (BitVec 64) :=
.seq body812_6 body812_514

def body812_516 : Prog (BitVec 64) :=
.seq body812_5 body812_515

def body812_517 : Prog (BitVec 64) :=
.seq body812_4 body812_516

def body812_518 : Prog (BitVec 64) :=
.seq body812_3 body812_517

def body812_519 : Prog (BitVec 64) :=
.seq body812_2 body812_518

def body812_520 : Prog (BitVec 64) :=
.seq body812_2 body812_3

def body812_521 : Prog (BitVec 64) :=
.seq body812_520 body812_4

def body812_522 : Prog (BitVec 64) :=
.seq body812_521 body812_5

def body812_523 : Prog (BitVec 64) :=
.seq body812_522 body812_6

def body812_524 : Prog (BitVec 64) :=
.seq body812_523 body812_7

def body812_525 : Prog (BitVec 64) :=
.seq body812_524 body812_8

def body812_526 : Prog (BitVec 64) :=
.seq body812_525 body812_9

def body812_527 : Prog (BitVec 64) :=
.seq body812_526 body812_10

def body812_528 : Prog (BitVec 64) :=
.seq body812_527 body812_11

def body812_529 : Prog (BitVec 64) :=
.seq body812_528 body812_12

def body812_530 : Prog (BitVec 64) :=
.seq body812_529 body812_13

def body812_531 : Prog (BitVec 64) :=
.seq body812_530 body812_14

def body812_532 : Prog (BitVec 64) :=
.seq body812_531 body812_15

def body812_533 : Prog (BitVec 64) :=
.seq body812_532 body812_16

def body812_534 : Prog (BitVec 64) :=
.seq body812_533 body812_17

def body812_535 : Prog (BitVec 64) :=
.seq body812_534 body812_18

def body812_536 : Prog (BitVec 64) :=
.seq body812_535 body812_19

def body812_537 : Prog (BitVec 64) :=
.seq body812_536 body812_20

def body812_538 : Prog (BitVec 64) :=
.seq body812_537 body812_21

def body812_539 : Prog (BitVec 64) :=
.seq body812_538 body812_22

def body812_540 : Prog (BitVec 64) :=
.seq body812_539 body812_23

def body812_541 : Prog (BitVec 64) :=
.seq body812_540 body812_24

def body812_542 : Prog (BitVec 64) :=
.seq body812_541 body812_25

def body812_543 : Prog (BitVec 64) :=
.seq body812_542 body812_26

def body812_544 : Prog (BitVec 64) :=
.seq body812_543 body812_27

def body812_545 : Prog (BitVec 64) :=
.seq body812_544 body812_28

def body812_546 : Prog (BitVec 64) :=
.seq body812_545 body812_29

def body812_547 : Prog (BitVec 64) :=
.seq body812_546 body812_30

def body812_548 : Prog (BitVec 64) :=
.seq body812_547 body812_31

def body812_549 : Prog (BitVec 64) :=
.seq body812_548 body812_32

def body812_550 : Prog (BitVec 64) :=
.seq body812_549 body812_33

def body812_551 : Prog (BitVec 64) :=
.seq body812_550 body812_34

def body812_552 : Prog (BitVec 64) :=
.seq body812_551 body812_35

def body812_553 : Prog (BitVec 64) :=
.seq body812_552 body812_36

def body812_554 : Prog (BitVec 64) :=
.seq body812_553 body812_37

def body812_555 : Prog (BitVec 64) :=
.seq body812_554 body812_38

def body812_556 : Prog (BitVec 64) :=
.seq body812_555 body812_39

def body812_557 : Prog (BitVec 64) :=
.seq body812_556 body812_40

def body812_558 : Prog (BitVec 64) :=
.seq body812_557 body812_41

def body812_559 : Prog (BitVec 64) :=
.seq body812_558 body812_42

def body812_560 : Prog (BitVec 64) :=
.seq body812_559 body812_43

def body812_561 : Prog (BitVec 64) :=
.seq body812_560 body812_44

def body812_562 : Prog (BitVec 64) :=
.seq body812_561 body812_45

def body812_563 : Prog (BitVec 64) :=
.seq body812_562 body812_46

def body812_564 : Prog (BitVec 64) :=
.seq body812_563 body812_47

def body812_565 : Prog (BitVec 64) :=
.seq body812_564 body812_48

def body812_566 : Prog (BitVec 64) :=
.seq body812_565 body812_49

def body812_567 : Prog (BitVec 64) :=
.seq body812_566 body812_50

def body812_568 : Prog (BitVec 64) :=
.seq body812_567 body812_51

def body812_569 : Prog (BitVec 64) :=
.seq body812_568 body812_52

def body812_570 : Prog (BitVec 64) :=
.seq body812_569 body812_53

def body812_571 : Prog (BitVec 64) :=
.seq body812_570 body812_54

def body812_572 : Prog (BitVec 64) :=
.seq body812_571 body812_55

def body812_573 : Prog (BitVec 64) :=
.seq body812_572 body812_56

def body812_574 : Prog (BitVec 64) :=
.seq body812_573 body812_57

def body812_575 : Prog (BitVec 64) :=
.seq body812_574 body812_58

def body812_576 : Prog (BitVec 64) :=
.seq body812_575 body812_59

def body812_577 : Prog (BitVec 64) :=
.seq body812_576 body812_60

def body812_578 : Prog (BitVec 64) :=
.seq body812_577 body812_61

def body812_579 : Prog (BitVec 64) :=
.seq body812_578 body812_62

def body812_580 : Prog (BitVec 64) :=
.seq body812_579 body812_63

def body812_581 : Prog (BitVec 64) :=
.seq body812_580 body812_64

def body812_582 : Prog (BitVec 64) :=
.seq body812_581 body812_65

def body812_583 : Prog (BitVec 64) :=
.seq body812_582 body812_66

def body812_584 : Prog (BitVec 64) :=
.seq body812_583 body812_67

def body812_585 : Prog (BitVec 64) :=
.seq body812_584 body812_68

def body812_586 : Prog (BitVec 64) :=
.seq body812_585 body812_69

def body812_587 : Prog (BitVec 64) :=
.seq body812_586 body812_70

def body812_588 : Prog (BitVec 64) :=
.seq body812_587 body812_71

def body812_589 : Prog (BitVec 64) :=
.seq body812_588 body812_72

def body812_590 : Prog (BitVec 64) :=
.seq body812_589 body812_73

def body812_591 : Prog (BitVec 64) :=
.seq body812_590 body812_74

def body812_592 : Prog (BitVec 64) :=
.seq body812_591 body812_75

def body812_593 : Prog (BitVec 64) :=
.seq body812_592 body812_76

def body812_594 : Prog (BitVec 64) :=
.seq body812_593 body812_77

def body812_595 : Prog (BitVec 64) :=
.seq body812_594 body812_78

def body812_596 : Prog (BitVec 64) :=
.seq body812_595 body812_79

def body812_597 : Prog (BitVec 64) :=
.seq body812_596 body812_80

def body812_598 : Prog (BitVec 64) :=
.seq body812_597 body812_81

def body812_599 : Prog (BitVec 64) :=
.seq body812_598 body812_82

def body812_600 : Prog (BitVec 64) :=
.seq body812_599 body812_83

def body812_601 : Prog (BitVec 64) :=
.seq body812_600 body812_84

def body812_602 : Prog (BitVec 64) :=
.seq body812_601 body812_85

def body812_603 : Prog (BitVec 64) :=
.seq body812_602 body812_86

def body812_604 : Prog (BitVec 64) :=
.seq body812_603 body812_87

def body812_605 : Prog (BitVec 64) :=
.seq body812_604 body812_88

def body812_606 : Prog (BitVec 64) :=
.seq body812_605 body812_89

def body812_607 : Prog (BitVec 64) :=
.seq body812_606 body812_90

def body812_608 : Prog (BitVec 64) :=
.seq body812_607 body812_91

def body812_609 : Prog (BitVec 64) :=
.seq body812_608 body812_92

def body812_610 : Prog (BitVec 64) :=
.seq body812_609 body812_93

def body812_611 : Prog (BitVec 64) :=
.seq body812_610 body812_94

def body812_612 : Prog (BitVec 64) :=
.seq body812_611 body812_95

def body812_613 : Prog (BitVec 64) :=
.seq body812_612 body812_96

def body812_614 : Prog (BitVec 64) :=
.seq body812_613 body812_97

def body812_615 : Prog (BitVec 64) :=
.seq body812_614 body812_98

def body812_616 : Prog (BitVec 64) :=
.seq body812_615 body812_99

def body812_617 : Prog (BitVec 64) :=
.seq body812_616 body812_100

def body812_618 : Prog (BitVec 64) :=
.seq body812_617 body812_101

def body812_619 : Prog (BitVec 64) :=
.seq body812_618 body812_102

def body812_620 : Prog (BitVec 64) :=
.seq body812_619 body812_103

def body812_621 : Prog (BitVec 64) :=
.seq body812_620 body812_104

def body812_622 : Prog (BitVec 64) :=
.seq body812_621 body812_105

def body812_623 : Prog (BitVec 64) :=
.seq body812_622 body812_106

def body812_624 : Prog (BitVec 64) :=
.seq body812_623 body812_107

def body812_625 : Prog (BitVec 64) :=
.seq body812_624 body812_108

def body812_626 : Prog (BitVec 64) :=
.seq body812_625 body812_109

def body812_627 : Prog (BitVec 64) :=
.seq body812_626 body812_110

def body812_628 : Prog (BitVec 64) :=
.seq body812_627 body812_111

def body812_629 : Prog (BitVec 64) :=
.seq body812_628 body812_112

def body812_630 : Prog (BitVec 64) :=
.seq body812_629 body812_113

def body812_631 : Prog (BitVec 64) :=
.seq body812_630 body812_114

def body812_632 : Prog (BitVec 64) :=
.seq body812_631 body812_115

def body812_633 : Prog (BitVec 64) :=
.seq body812_632 body812_116

def body812_634 : Prog (BitVec 64) :=
.seq body812_633 body812_117

def body812_635 : Prog (BitVec 64) :=
.seq body812_634 body812_118

def body812_636 : Prog (BitVec 64) :=
.seq body812_635 body812_119

def body812_637 : Prog (BitVec 64) :=
.seq body812_636 body812_120

def body812_638 : Prog (BitVec 64) :=
.seq body812_637 body812_121

def body812_639 : Prog (BitVec 64) :=
.seq body812_638 body812_122

def body812_640 : Prog (BitVec 64) :=
.seq body812_639 body812_123

def body812_641 : Prog (BitVec 64) :=
.seq body812_640 body812_124

def body812_642 : Prog (BitVec 64) :=
.seq body812_641 body812_125

def body812_643 : Prog (BitVec 64) :=
.seq body812_642 body812_126

def body812_644 : Prog (BitVec 64) :=
.seq body812_643 body812_127

def body812_645 : Prog (BitVec 64) :=
.seq body812_644 body812_128

def body812_646 : Prog (BitVec 64) :=
.seq body812_645 body812_129

def body812_647 : Prog (BitVec 64) :=
.seq body812_646 body812_130

def body812_648 : Prog (BitVec 64) :=
.seq body812_647 body812_131

def body812_649 : Prog (BitVec 64) :=
.seq body812_648 body812_132

def body812_650 : Prog (BitVec 64) :=
.seq body812_649 body812_133

def body812_651 : Prog (BitVec 64) :=
.seq body812_650 body812_134

def body812_652 : Prog (BitVec 64) :=
.seq body812_651 body812_135

def body812_653 : Prog (BitVec 64) :=
.seq body812_652 body812_136

def body812_654 : Prog (BitVec 64) :=
.seq body812_653 body812_137

def body812_655 : Prog (BitVec 64) :=
.seq body812_654 body812_138

def body812_656 : Prog (BitVec 64) :=
.seq body812_655 body812_139

def body812_657 : Prog (BitVec 64) :=
.seq body812_656 body812_140

def body812_658 : Prog (BitVec 64) :=
.seq body812_657 body812_141

def body812_659 : Prog (BitVec 64) :=
.seq body812_658 body812_142

def body812_660 : Prog (BitVec 64) :=
.seq body812_659 body812_143

def body812_661 : Prog (BitVec 64) :=
.seq body812_660 body812_144

def body812_662 : Prog (BitVec 64) :=
.seq body812_661 body812_145

def body812_663 : Prog (BitVec 64) :=
.seq body812_662 body812_146

def body812_664 : Prog (BitVec 64) :=
.seq body812_663 body812_147

def body812_665 : Prog (BitVec 64) :=
.seq body812_664 body812_148

def body812_666 : Prog (BitVec 64) :=
.seq body812_665 body812_149

def body812_667 : Prog (BitVec 64) :=
.seq body812_666 body812_150

def body812_668 : Prog (BitVec 64) :=
.seq body812_667 body812_151

def body812_669 : Prog (BitVec 64) :=
.seq body812_668 body812_152

def body812_670 : Prog (BitVec 64) :=
.seq body812_669 body812_153

def body812_671 : Prog (BitVec 64) :=
.seq body812_670 body812_154

def body812_672 : Prog (BitVec 64) :=
.seq body812_671 body812_155

def body812_673 : Prog (BitVec 64) :=
.seq body812_672 body812_156

def body812_674 : Prog (BitVec 64) :=
.seq body812_673 body812_157

def body812_675 : Prog (BitVec 64) :=
.seq body812_674 body812_158

def body812_676 : Prog (BitVec 64) :=
.seq body812_675 body812_159

def body812_677 : Prog (BitVec 64) :=
.seq body812_676 body812_160

def body812_678 : Prog (BitVec 64) :=
.seq body812_677 body812_161

def body812_679 : Prog (BitVec 64) :=
.seq body812_678 body812_162

def body812_680 : Prog (BitVec 64) :=
.seq body812_679 body812_163

def body812_681 : Prog (BitVec 64) :=
.seq body812_680 body812_164

def body812_682 : Prog (BitVec 64) :=
.seq body812_681 body812_165

def body812_683 : Prog (BitVec 64) :=
.seq body812_682 body812_166

def body812_684 : Prog (BitVec 64) :=
.seq body812_683 body812_167

def body812_685 : Prog (BitVec 64) :=
.seq body812_684 body812_168

def body812_686 : Prog (BitVec 64) :=
.seq body812_685 body812_169

def body812_687 : Prog (BitVec 64) :=
.seq body812_686 body812_170

def body812_688 : Prog (BitVec 64) :=
.seq body812_687 body812_171

def body812_689 : Prog (BitVec 64) :=
.seq body812_688 body812_172

def body812_690 : Prog (BitVec 64) :=
.seq body812_689 body812_173

def body812_691 : Prog (BitVec 64) :=
.seq body812_690 body812_174

def body812_692 : Prog (BitVec 64) :=
.seq body812_691 body812_175

def body812_693 : Prog (BitVec 64) :=
.seq body812_692 body812_176

def body812_694 : Prog (BitVec 64) :=
.seq body812_693 body812_177

def body812_695 : Prog (BitVec 64) :=
.seq body812_694 body812_178

def body812_696 : Prog (BitVec 64) :=
.seq body812_695 body812_179

def body812_697 : Prog (BitVec 64) :=
.seq body812_696 body812_180

def body812_698 : Prog (BitVec 64) :=
.seq body812_697 body812_181

def body812_699 : Prog (BitVec 64) :=
.seq body812_698 body812_182

def body812_700 : Prog (BitVec 64) :=
.seq body812_699 body812_183

def body812_701 : Prog (BitVec 64) :=
.seq body812_700 body812_184

def body812_702 : Prog (BitVec 64) :=
.seq body812_701 body812_185

def body812_703 : Prog (BitVec 64) :=
.seq body812_702 body812_186

def body812_704 : Prog (BitVec 64) :=
.seq body812_703 body812_187

def body812_705 : Prog (BitVec 64) :=
.seq body812_704 body812_188

def body812_706 : Prog (BitVec 64) :=
.seq body812_705 body812_189

def body812_707 : Prog (BitVec 64) :=
.seq body812_706 body812_190

def body812_708 : Prog (BitVec 64) :=
.seq body812_707 body812_191

def body812_709 : Prog (BitVec 64) :=
.seq body812_708 body812_192

def body812_710 : Prog (BitVec 64) :=
.seq body812_709 body812_193

def body812_711 : Prog (BitVec 64) :=
.seq body812_710 body812_194

def body812_712 : Prog (BitVec 64) :=
.seq body812_711 body812_195

def body812_713 : Prog (BitVec 64) :=
.seq body812_712 body812_196

def body812_714 : Prog (BitVec 64) :=
.seq body812_713 body812_197

def body812_715 : Prog (BitVec 64) :=
.seq body812_714 body812_198

def body812_716 : Prog (BitVec 64) :=
.seq body812_715 body812_199

def body812_717 : Prog (BitVec 64) :=
.seq body812_716 body812_200

def body812_718 : Prog (BitVec 64) :=
.seq body812_717 body812_201

def body812_719 : Prog (BitVec 64) :=
.seq body812_718 body812_202

def body812_720 : Prog (BitVec 64) :=
.seq body812_719 body812_203

def body812_721 : Prog (BitVec 64) :=
.seq body812_720 body812_204

def body812_722 : Prog (BitVec 64) :=
.seq body812_721 body812_205

def body812_723 : Prog (BitVec 64) :=
.seq body812_722 body812_206

def body812_724 : Prog (BitVec 64) :=
.seq body812_723 body812_207

def body812_725 : Prog (BitVec 64) :=
.seq body812_724 body812_208

def body812_726 : Prog (BitVec 64) :=
.seq body812_725 body812_209

def body812_727 : Prog (BitVec 64) :=
.seq body812_726 body812_210

def body812_728 : Prog (BitVec 64) :=
.seq body812_727 body812_211

def body812_729 : Prog (BitVec 64) :=
.seq body812_728 body812_212

def body812_730 : Prog (BitVec 64) :=
.seq body812_729 body812_213

def body812_731 : Prog (BitVec 64) :=
.seq body812_730 body812_214

def body812_732 : Prog (BitVec 64) :=
.seq body812_731 body812_215

def body812_733 : Prog (BitVec 64) :=
.seq body812_732 body812_216

def body812_734 : Prog (BitVec 64) :=
.seq body812_733 body812_217

def body812_735 : Prog (BitVec 64) :=
.seq body812_734 body812_218

def body812_736 : Prog (BitVec 64) :=
.seq body812_735 body812_219

def body812_737 : Prog (BitVec 64) :=
.seq body812_736 body812_220

def body812_738 : Prog (BitVec 64) :=
.seq body812_737 body812_221

def body812_739 : Prog (BitVec 64) :=
.seq body812_738 body812_222

def body812_740 : Prog (BitVec 64) :=
.seq body812_739 body812_223

def body812_741 : Prog (BitVec 64) :=
.seq body812_740 body812_224

def body812_742 : Prog (BitVec 64) :=
.seq body812_741 body812_225

def body812_743 : Prog (BitVec 64) :=
.seq body812_742 body812_226

def body812_744 : Prog (BitVec 64) :=
.seq body812_743 body812_227

def body812_745 : Prog (BitVec 64) :=
.seq body812_744 body812_228

def body812_746 : Prog (BitVec 64) :=
.seq body812_745 body812_229

def body812_747 : Prog (BitVec 64) :=
.seq body812_746 body812_230

def body812_748 : Prog (BitVec 64) :=
.seq body812_747 body812_231

def body812_749 : Prog (BitVec 64) :=
.seq body812_748 body812_232

def body812_750 : Prog (BitVec 64) :=
.seq body812_749 body812_233

def body812_751 : Prog (BitVec 64) :=
.seq body812_750 body812_234

def body812_752 : Prog (BitVec 64) :=
.seq body812_751 body812_235

def body812_753 : Prog (BitVec 64) :=
.seq body812_752 body812_236

def body812_754 : Prog (BitVec 64) :=
.seq body812_753 body812_237

def body812_755 : Prog (BitVec 64) :=
.seq body812_754 body812_238

def body812_756 : Prog (BitVec 64) :=
.seq body812_755 body812_239

def body812_757 : Prog (BitVec 64) :=
.seq body812_756 body812_240

def body812_758 : Prog (BitVec 64) :=
.seq body812_757 body812_241

def body812_759 : Prog (BitVec 64) :=
.seq body812_758 body812_242

def body812_760 : Prog (BitVec 64) :=
.seq body812_759 body812_243

def body812_761 : Prog (BitVec 64) :=
.seq body812_760 body812_244

def body812_762 : Prog (BitVec 64) :=
.seq body812_761 body812_245

def body812_763 : Prog (BitVec 64) :=
.seq body812_762 body812_246

def body812_764 : Prog (BitVec 64) :=
.seq body812_763 body812_247

def body812_765 : Prog (BitVec 64) :=
.seq body812_764 body812_248

def body812_766 : Prog (BitVec 64) :=
.seq body812_765 body812_249

def body812_767 : Prog (BitVec 64) :=
.seq body812_766 body812_250

def body812_768 : Prog (BitVec 64) :=
.seq body812_767 body812_251

def body812_769 : Prog (BitVec 64) :=
.seq body812_768 body812_252

def body812_770 : Prog (BitVec 64) :=
.seq body812_769 body812_253

def body812_771 : Prog (BitVec 64) :=
.seq body812_770 body812_254

def body812_772 : Prog (BitVec 64) :=
.seq body812_771 body812_255

def body812_773 : Prog (BitVec 64) :=
.seq body812_772 body812_256

def body812_774 : Prog (BitVec 64) :=
.seq body812_773 body812_257

def body812_775 : Prog (BitVec 64) :=
.seq body812_774 body812_258

def body812_776 : Prog (BitVec 64) :=
.seq body812_775 body812_259

def body812_777 : Prog (BitVec 64) :=
.seq body812_776 body812_260

def body812_778 : Prog (BitVec 64) :=
.seq body812_777 body812_0

def originalData812 : Decl (BitVec 64) :=
.function { name := "bls_precompiles_init", inline := false, exported := false, params := [], body := body812_519, returnShape := (Flapjack.Shape.one) }
def simplifiedData812 : Decl (BitVec 64) :=
.function { name := "bls_precompiles_init", inline := false, exported := false, params := [], body := body812_778, returnShape := (Flapjack.Shape.one) }
def original812 := Pancake.PanLang.declToHOL originalData812
def simplified812 := Pancake.PanLang.declToHOL simplifiedData812
end InitECandidate.Proofs.FrontendStages.Declarations
