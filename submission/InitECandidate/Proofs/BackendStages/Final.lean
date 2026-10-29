import InitECandidate.Proofs.BackendStages.Composition
import InitECandidate.Proofs.BackendStages.FinalChunkStubs
import InitECandidate.Proofs.BackendStages.FinalChunk64_79
import InitECandidate.Proofs.BackendStages.FinalChunk80_95
import InitECandidate.Proofs.BackendStages.FinalChunk96_111
import InitECandidate.Proofs.BackendStages.FinalChunk112_127
import InitECandidate.Proofs.BackendStages.FinalChunk128_143
import InitECandidate.Proofs.BackendStages.FinalChunk144_159
import InitECandidate.Proofs.BackendStages.FinalChunk160_175
import InitECandidate.Proofs.BackendStages.FinalChunk176_191
import InitECandidate.Proofs.BackendStages.FinalChunk192_207
import InitECandidate.Proofs.BackendStages.FinalChunk208_223
import InitECandidate.Proofs.BackendStages.FinalChunk224_239
import InitECandidate.Proofs.BackendStages.FinalChunk240_255
import InitECandidate.Proofs.BackendStages.FinalChunk256_271
import InitECandidate.Proofs.BackendStages.FinalChunk272_287
import InitECandidate.Proofs.BackendStages.FinalChunk288_303
import InitECandidate.Proofs.BackendStages.FinalChunk304_319
import InitECandidate.Proofs.BackendStages.FinalChunk320_335
import InitECandidate.Proofs.BackendStages.FinalChunk336_351
import InitECandidate.Proofs.BackendStages.FinalChunk352_367
import InitECandidate.Proofs.BackendStages.FinalChunk368_383
import InitECandidate.Proofs.BackendStages.FinalChunk384_399
import InitECandidate.Proofs.BackendStages.FinalChunk400_415
import InitECandidate.Proofs.BackendStages.FinalChunk416_431
import InitECandidate.Proofs.BackendStages.FinalChunk432_447
import InitECandidate.Proofs.BackendStages.FinalChunk448_463
import InitECandidate.Proofs.BackendStages.FinalChunk464_479
import InitECandidate.Proofs.BackendStages.FinalChunk480_495
import InitECandidate.Proofs.BackendStages.FinalChunk496_511
import InitECandidate.Proofs.BackendStages.FinalChunk512_527
import InitECandidate.Proofs.BackendStages.FinalChunk528_543
import InitECandidate.Proofs.BackendStages.FinalChunk544_559
import InitECandidate.Proofs.BackendStages.FinalChunk560_575
import InitECandidate.Proofs.BackendStages.FinalChunk576_591
import InitECandidate.Proofs.BackendStages.FinalChunk592_607
import InitECandidate.Proofs.BackendStages.FinalChunk608_623
import InitECandidate.Proofs.BackendStages.FinalChunk624_639
import InitECandidate.Proofs.BackendStages.FinalChunk640_655
import InitECandidate.Proofs.BackendStages.FinalChunk656_671
import InitECandidate.Proofs.BackendStages.FinalChunk672_687
import InitECandidate.Proofs.BackendStages.FinalChunk688_703
import InitECandidate.Proofs.BackendStages.FinalChunk704_719
import InitECandidate.Proofs.BackendStages.FinalChunk720_735
import InitECandidate.Proofs.BackendStages.FinalChunk736_751
import InitECandidate.Proofs.BackendStages.FinalChunk752_767
import InitECandidate.Proofs.BackendStages.FinalChunk768_783
import InitECandidate.Proofs.BackendStages.FinalChunk784_799
import InitECandidate.Proofs.BackendStages.FinalChunk800_815
import InitECandidate.Proofs.BackendStages.FinalChunk816_831
import InitECandidate.Proofs.BackendStages.FinalChunk832_847
import InitECandidate.Proofs.BackendStages.FinalChunk848_863
import InitECandidate.Proofs.BackendStages.FinalChunk864_877
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Final
def input52 : LabSem.LabProgHOL 64 := []
def aligned52 : LabSem.LabProgHOL 64 := []
def final52 : LabSem.LabProgHOL 64 := []
def padded52 : LabSem.LabProgHOL 64 := []
theorem alignment52_eq : LabToTarget.updLabLen 979140 input52 = aligned52 := by rfl
theorem rewrite52_eq : LabToTarget.encSecsAgain 979140 Target.labelsFinal Target.ffis riscvConfig.encode aligned52 = (final52, true) := by rfl
theorem padding52_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final52 = padded52 := by rfl
theorem valid52 : LabToTarget.allEncOkLight riscvConfig padded52 = true := by rfl
def input51 := FinalChunk864_877.input ++ input52
def aligned51 := FinalChunk864_877.aligned ++ aligned52
def final51 := FinalChunk864_877.final ++ final52
def padded51 := FinalChunk864_877.padded ++ padded52
theorem alignment51_eq : LabToTarget.updLabLen 963836 input51 = aligned51 := FinalChunk864_877.alignment_eq _ _ alignment52_eq
theorem rewrite51_eq : LabToTarget.encSecsAgain 963836 Target.labelsFinal Target.ffis riscvConfig.encode aligned51 = (final51, true) := FinalChunk864_877.rewrite_eq _ _ rewrite52_eq
theorem padding51_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final51 = padded51 := by
  unfold final51 padded51
  rw [Composition.padCode_append, FinalChunk864_877.padding_eq, padding52_eq]
theorem valid51 : LabToTarget.allEncOkLight riscvConfig padded51 = true := Composition.valid_append _ _ _ FinalChunk864_877.valid valid52
def input50 := FinalChunk848_863.input ++ input51
def aligned50 := FinalChunk848_863.aligned ++ aligned51
def final50 := FinalChunk848_863.final ++ final51
def padded50 := FinalChunk848_863.padded ++ padded51
theorem alignment50_eq : LabToTarget.updLabLen 917144 input50 = aligned50 := FinalChunk848_863.alignment_eq _ _ alignment51_eq
theorem rewrite50_eq : LabToTarget.encSecsAgain 917144 Target.labelsFinal Target.ffis riscvConfig.encode aligned50 = (final50, true) := FinalChunk848_863.rewrite_eq _ _ rewrite51_eq
theorem padding50_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final50 = padded50 := by
  unfold final50 padded50
  rw [Composition.padCode_append, FinalChunk848_863.padding_eq, padding51_eq]
theorem valid50 : LabToTarget.allEncOkLight riscvConfig padded50 = true := Composition.valid_append _ _ _ FinalChunk848_863.valid valid51
def input49 := FinalChunk832_847.input ++ input50
def aligned49 := FinalChunk832_847.aligned ++ aligned50
def final49 := FinalChunk832_847.final ++ final50
def padded49 := FinalChunk832_847.padded ++ padded50
theorem alignment49_eq : LabToTarget.updLabLen 897140 input49 = aligned49 := FinalChunk832_847.alignment_eq _ _ alignment50_eq
theorem rewrite49_eq : LabToTarget.encSecsAgain 897140 Target.labelsFinal Target.ffis riscvConfig.encode aligned49 = (final49, true) := FinalChunk832_847.rewrite_eq _ _ rewrite50_eq
theorem padding49_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final49 = padded49 := by
  unfold final49 padded49
  rw [Composition.padCode_append, FinalChunk832_847.padding_eq, padding50_eq]
theorem valid49 : LabToTarget.allEncOkLight riscvConfig padded49 = true := Composition.valid_append _ _ _ FinalChunk832_847.valid valid50
def input48 := FinalChunk816_831.input ++ input49
def aligned48 := FinalChunk816_831.aligned ++ aligned49
def final48 := FinalChunk816_831.final ++ final49
def padded48 := FinalChunk816_831.padded ++ padded49
theorem alignment48_eq : LabToTarget.updLabLen 881848 input48 = aligned48 := FinalChunk816_831.alignment_eq _ _ alignment49_eq
theorem rewrite48_eq : LabToTarget.encSecsAgain 881848 Target.labelsFinal Target.ffis riscvConfig.encode aligned48 = (final48, true) := FinalChunk816_831.rewrite_eq _ _ rewrite49_eq
theorem padding48_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final48 = padded48 := by
  unfold final48 padded48
  rw [Composition.padCode_append, FinalChunk816_831.padding_eq, padding49_eq]
theorem valid48 : LabToTarget.allEncOkLight riscvConfig padded48 = true := Composition.valid_append _ _ _ FinalChunk816_831.valid valid49
def input47 := FinalChunk800_815.input ++ input48
def aligned47 := FinalChunk800_815.aligned ++ aligned48
def final47 := FinalChunk800_815.final ++ final48
def padded47 := FinalChunk800_815.padded ++ padded48
theorem alignment47_eq : LabToTarget.updLabLen 846584 input47 = aligned47 := FinalChunk800_815.alignment_eq _ _ alignment48_eq
theorem rewrite47_eq : LabToTarget.encSecsAgain 846584 Target.labelsFinal Target.ffis riscvConfig.encode aligned47 = (final47, true) := FinalChunk800_815.rewrite_eq _ _ rewrite48_eq
theorem padding47_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final47 = padded47 := by
  unfold final47 padded47
  rw [Composition.padCode_append, FinalChunk800_815.padding_eq, padding48_eq]
theorem valid47 : LabToTarget.allEncOkLight riscvConfig padded47 = true := Composition.valid_append _ _ _ FinalChunk800_815.valid valid48
def input46 := FinalChunk784_799.input ++ input47
def aligned46 := FinalChunk784_799.aligned ++ aligned47
def final46 := FinalChunk784_799.final ++ final47
def padded46 := FinalChunk784_799.padded ++ padded47
theorem alignment46_eq : LabToTarget.updLabLen 802160 input46 = aligned46 := FinalChunk784_799.alignment_eq _ _ alignment47_eq
theorem rewrite46_eq : LabToTarget.encSecsAgain 802160 Target.labelsFinal Target.ffis riscvConfig.encode aligned46 = (final46, true) := FinalChunk784_799.rewrite_eq _ _ rewrite47_eq
theorem padding46_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final46 = padded46 := by
  unfold final46 padded46
  rw [Composition.padCode_append, FinalChunk784_799.padding_eq, padding47_eq]
theorem valid46 : LabToTarget.allEncOkLight riscvConfig padded46 = true := Composition.valid_append _ _ _ FinalChunk784_799.valid valid47
def input45 := FinalChunk768_783.input ++ input46
def aligned45 := FinalChunk768_783.aligned ++ aligned46
def final45 := FinalChunk768_783.final ++ final46
def padded45 := FinalChunk768_783.padded ++ padded46
theorem alignment45_eq : LabToTarget.updLabLen 767408 input45 = aligned45 := FinalChunk768_783.alignment_eq _ _ alignment46_eq
theorem rewrite45_eq : LabToTarget.encSecsAgain 767408 Target.labelsFinal Target.ffis riscvConfig.encode aligned45 = (final45, true) := FinalChunk768_783.rewrite_eq _ _ rewrite46_eq
theorem padding45_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final45 = padded45 := by
  unfold final45 padded45
  rw [Composition.padCode_append, FinalChunk768_783.padding_eq, padding46_eq]
theorem valid45 : LabToTarget.allEncOkLight riscvConfig padded45 = true := Composition.valid_append _ _ _ FinalChunk768_783.valid valid46
def input44 := FinalChunk752_767.input ++ input45
def aligned44 := FinalChunk752_767.aligned ++ aligned45
def final44 := FinalChunk752_767.final ++ final45
def padded44 := FinalChunk752_767.padded ++ padded45
theorem alignment44_eq : LabToTarget.updLabLen 747984 input44 = aligned44 := FinalChunk752_767.alignment_eq _ _ alignment45_eq
theorem rewrite44_eq : LabToTarget.encSecsAgain 747984 Target.labelsFinal Target.ffis riscvConfig.encode aligned44 = (final44, true) := FinalChunk752_767.rewrite_eq _ _ rewrite45_eq
theorem padding44_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final44 = padded44 := by
  unfold final44 padded44
  rw [Composition.padCode_append, FinalChunk752_767.padding_eq, padding45_eq]
theorem valid44 : LabToTarget.allEncOkLight riscvConfig padded44 = true := Composition.valid_append _ _ _ FinalChunk752_767.valid valid45
def input43 := FinalChunk736_751.input ++ input44
def aligned43 := FinalChunk736_751.aligned ++ aligned44
def final43 := FinalChunk736_751.final ++ final44
def padded43 := FinalChunk736_751.padded ++ padded44
theorem alignment43_eq : LabToTarget.updLabLen 735484 input43 = aligned43 := FinalChunk736_751.alignment_eq _ _ alignment44_eq
theorem rewrite43_eq : LabToTarget.encSecsAgain 735484 Target.labelsFinal Target.ffis riscvConfig.encode aligned43 = (final43, true) := FinalChunk736_751.rewrite_eq _ _ rewrite44_eq
theorem padding43_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final43 = padded43 := by
  unfold final43 padded43
  rw [Composition.padCode_append, FinalChunk736_751.padding_eq, padding44_eq]
theorem valid43 : LabToTarget.allEncOkLight riscvConfig padded43 = true := Composition.valid_append _ _ _ FinalChunk736_751.valid valid44
def input42 := FinalChunk720_735.input ++ input43
def aligned42 := FinalChunk720_735.aligned ++ aligned43
def final42 := FinalChunk720_735.final ++ final43
def padded42 := FinalChunk720_735.padded ++ padded43
theorem alignment42_eq : LabToTarget.updLabLen 723376 input42 = aligned42 := FinalChunk720_735.alignment_eq _ _ alignment43_eq
theorem rewrite42_eq : LabToTarget.encSecsAgain 723376 Target.labelsFinal Target.ffis riscvConfig.encode aligned42 = (final42, true) := FinalChunk720_735.rewrite_eq _ _ rewrite43_eq
theorem padding42_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final42 = padded42 := by
  unfold final42 padded42
  rw [Composition.padCode_append, FinalChunk720_735.padding_eq, padding43_eq]
theorem valid42 : LabToTarget.allEncOkLight riscvConfig padded42 = true := Composition.valid_append _ _ _ FinalChunk720_735.valid valid43
def input41 := FinalChunk704_719.input ++ input42
def aligned41 := FinalChunk704_719.aligned ++ aligned42
def final41 := FinalChunk704_719.final ++ final42
def padded41 := FinalChunk704_719.padded ++ padded42
theorem alignment41_eq : LabToTarget.updLabLen 666848 input41 = aligned41 := FinalChunk704_719.alignment_eq _ _ alignment42_eq
theorem rewrite41_eq : LabToTarget.encSecsAgain 666848 Target.labelsFinal Target.ffis riscvConfig.encode aligned41 = (final41, true) := FinalChunk704_719.rewrite_eq _ _ rewrite42_eq
theorem padding41_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final41 = padded41 := by
  unfold final41 padded41
  rw [Composition.padCode_append, FinalChunk704_719.padding_eq, padding42_eq]
theorem valid41 : LabToTarget.allEncOkLight riscvConfig padded41 = true := Composition.valid_append _ _ _ FinalChunk704_719.valid valid42
def input40 := FinalChunk688_703.input ++ input41
def aligned40 := FinalChunk688_703.aligned ++ aligned41
def final40 := FinalChunk688_703.final ++ final41
def padded40 := FinalChunk688_703.padded ++ padded41
theorem alignment40_eq : LabToTarget.updLabLen 627408 input40 = aligned40 := FinalChunk688_703.alignment_eq _ _ alignment41_eq
theorem rewrite40_eq : LabToTarget.encSecsAgain 627408 Target.labelsFinal Target.ffis riscvConfig.encode aligned40 = (final40, true) := FinalChunk688_703.rewrite_eq _ _ rewrite41_eq
theorem padding40_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final40 = padded40 := by
  unfold final40 padded40
  rw [Composition.padCode_append, FinalChunk688_703.padding_eq, padding41_eq]
theorem valid40 : LabToTarget.allEncOkLight riscvConfig padded40 = true := Composition.valid_append _ _ _ FinalChunk688_703.valid valid41
def input39 := FinalChunk672_687.input ++ input40
def aligned39 := FinalChunk672_687.aligned ++ aligned40
def final39 := FinalChunk672_687.final ++ final40
def padded39 := FinalChunk672_687.padded ++ padded40
theorem alignment39_eq : LabToTarget.updLabLen 602848 input39 = aligned39 := FinalChunk672_687.alignment_eq _ _ alignment40_eq
theorem rewrite39_eq : LabToTarget.encSecsAgain 602848 Target.labelsFinal Target.ffis riscvConfig.encode aligned39 = (final39, true) := FinalChunk672_687.rewrite_eq _ _ rewrite40_eq
theorem padding39_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final39 = padded39 := by
  unfold final39 padded39
  rw [Composition.padCode_append, FinalChunk672_687.padding_eq, padding40_eq]
theorem valid39 : LabToTarget.allEncOkLight riscvConfig padded39 = true := Composition.valid_append _ _ _ FinalChunk672_687.valid valid40
def input38 := FinalChunk656_671.input ++ input39
def aligned38 := FinalChunk656_671.aligned ++ aligned39
def final38 := FinalChunk656_671.final ++ final39
def padded38 := FinalChunk656_671.padded ++ padded39
theorem alignment38_eq : LabToTarget.updLabLen 578596 input38 = aligned38 := FinalChunk656_671.alignment_eq _ _ alignment39_eq
theorem rewrite38_eq : LabToTarget.encSecsAgain 578596 Target.labelsFinal Target.ffis riscvConfig.encode aligned38 = (final38, true) := FinalChunk656_671.rewrite_eq _ _ rewrite39_eq
theorem padding38_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final38 = padded38 := by
  unfold final38 padded38
  rw [Composition.padCode_append, FinalChunk656_671.padding_eq, padding39_eq]
theorem valid38 : LabToTarget.allEncOkLight riscvConfig padded38 = true := Composition.valid_append _ _ _ FinalChunk656_671.valid valid39
def input37 := FinalChunk640_655.input ++ input38
def aligned37 := FinalChunk640_655.aligned ++ aligned38
def final37 := FinalChunk640_655.final ++ final38
def padded37 := FinalChunk640_655.padded ++ padded38
theorem alignment37_eq : LabToTarget.updLabLen 535504 input37 = aligned37 := FinalChunk640_655.alignment_eq _ _ alignment38_eq
theorem rewrite37_eq : LabToTarget.encSecsAgain 535504 Target.labelsFinal Target.ffis riscvConfig.encode aligned37 = (final37, true) := FinalChunk640_655.rewrite_eq _ _ rewrite38_eq
theorem padding37_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final37 = padded37 := by
  unfold final37 padded37
  rw [Composition.padCode_append, FinalChunk640_655.padding_eq, padding38_eq]
theorem valid37 : LabToTarget.allEncOkLight riscvConfig padded37 = true := Composition.valid_append _ _ _ FinalChunk640_655.valid valid38
def input36 := FinalChunk624_639.input ++ input37
def aligned36 := FinalChunk624_639.aligned ++ aligned37
def final36 := FinalChunk624_639.final ++ final37
def padded36 := FinalChunk624_639.padded ++ padded37
theorem alignment36_eq : LabToTarget.updLabLen 516472 input36 = aligned36 := FinalChunk624_639.alignment_eq _ _ alignment37_eq
theorem rewrite36_eq : LabToTarget.encSecsAgain 516472 Target.labelsFinal Target.ffis riscvConfig.encode aligned36 = (final36, true) := FinalChunk624_639.rewrite_eq _ _ rewrite37_eq
theorem padding36_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final36 = padded36 := by
  unfold final36 padded36
  rw [Composition.padCode_append, FinalChunk624_639.padding_eq, padding37_eq]
theorem valid36 : LabToTarget.allEncOkLight riscvConfig padded36 = true := Composition.valid_append _ _ _ FinalChunk624_639.valid valid37
def input35 := FinalChunk608_623.input ++ input36
def aligned35 := FinalChunk608_623.aligned ++ aligned36
def final35 := FinalChunk608_623.final ++ final36
def padded35 := FinalChunk608_623.padded ++ padded36
theorem alignment35_eq : LabToTarget.updLabLen 481004 input35 = aligned35 := FinalChunk608_623.alignment_eq _ _ alignment36_eq
theorem rewrite35_eq : LabToTarget.encSecsAgain 481004 Target.labelsFinal Target.ffis riscvConfig.encode aligned35 = (final35, true) := FinalChunk608_623.rewrite_eq _ _ rewrite36_eq
theorem padding35_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final35 = padded35 := by
  unfold final35 padded35
  rw [Composition.padCode_append, FinalChunk608_623.padding_eq, padding36_eq]
theorem valid35 : LabToTarget.allEncOkLight riscvConfig padded35 = true := Composition.valid_append _ _ _ FinalChunk608_623.valid valid36
def input34 := FinalChunk592_607.input ++ input35
def aligned34 := FinalChunk592_607.aligned ++ aligned35
def final34 := FinalChunk592_607.final ++ final35
def padded34 := FinalChunk592_607.padded ++ padded35
theorem alignment34_eq : LabToTarget.updLabLen 448808 input34 = aligned34 := FinalChunk592_607.alignment_eq _ _ alignment35_eq
theorem rewrite34_eq : LabToTarget.encSecsAgain 448808 Target.labelsFinal Target.ffis riscvConfig.encode aligned34 = (final34, true) := FinalChunk592_607.rewrite_eq _ _ rewrite35_eq
theorem padding34_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final34 = padded34 := by
  unfold final34 padded34
  rw [Composition.padCode_append, FinalChunk592_607.padding_eq, padding35_eq]
theorem valid34 : LabToTarget.allEncOkLight riscvConfig padded34 = true := Composition.valid_append _ _ _ FinalChunk592_607.valid valid35
def input33 := FinalChunk576_591.input ++ input34
def aligned33 := FinalChunk576_591.aligned ++ aligned34
def final33 := FinalChunk576_591.final ++ final34
def padded33 := FinalChunk576_591.padded ++ padded34
theorem alignment33_eq : LabToTarget.updLabLen 431096 input33 = aligned33 := FinalChunk576_591.alignment_eq _ _ alignment34_eq
theorem rewrite33_eq : LabToTarget.encSecsAgain 431096 Target.labelsFinal Target.ffis riscvConfig.encode aligned33 = (final33, true) := FinalChunk576_591.rewrite_eq _ _ rewrite34_eq
theorem padding33_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final33 = padded33 := by
  unfold final33 padded33
  rw [Composition.padCode_append, FinalChunk576_591.padding_eq, padding34_eq]
theorem valid33 : LabToTarget.allEncOkLight riscvConfig padded33 = true := Composition.valid_append _ _ _ FinalChunk576_591.valid valid34
def input32 := FinalChunk560_575.input ++ input33
def aligned32 := FinalChunk560_575.aligned ++ aligned33
def final32 := FinalChunk560_575.final ++ final33
def padded32 := FinalChunk560_575.padded ++ padded33
theorem alignment32_eq : LabToTarget.updLabLen 417856 input32 = aligned32 := FinalChunk560_575.alignment_eq _ _ alignment33_eq
theorem rewrite32_eq : LabToTarget.encSecsAgain 417856 Target.labelsFinal Target.ffis riscvConfig.encode aligned32 = (final32, true) := FinalChunk560_575.rewrite_eq _ _ rewrite33_eq
theorem padding32_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final32 = padded32 := by
  unfold final32 padded32
  rw [Composition.padCode_append, FinalChunk560_575.padding_eq, padding33_eq]
theorem valid32 : LabToTarget.allEncOkLight riscvConfig padded32 = true := Composition.valid_append _ _ _ FinalChunk560_575.valid valid33
def input31 := FinalChunk544_559.input ++ input32
def aligned31 := FinalChunk544_559.aligned ++ aligned32
def final31 := FinalChunk544_559.final ++ final32
def padded31 := FinalChunk544_559.padded ++ padded32
theorem alignment31_eq : LabToTarget.updLabLen 401564 input31 = aligned31 := FinalChunk544_559.alignment_eq _ _ alignment32_eq
theorem rewrite31_eq : LabToTarget.encSecsAgain 401564 Target.labelsFinal Target.ffis riscvConfig.encode aligned31 = (final31, true) := FinalChunk544_559.rewrite_eq _ _ rewrite32_eq
theorem padding31_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final31 = padded31 := by
  unfold final31 padded31
  rw [Composition.padCode_append, FinalChunk544_559.padding_eq, padding32_eq]
theorem valid31 : LabToTarget.allEncOkLight riscvConfig padded31 = true := Composition.valid_append _ _ _ FinalChunk544_559.valid valid32
def input30 := FinalChunk528_543.input ++ input31
def aligned30 := FinalChunk528_543.aligned ++ aligned31
def final30 := FinalChunk528_543.final ++ final31
def padded30 := FinalChunk528_543.padded ++ padded31
theorem alignment30_eq : LabToTarget.updLabLen 391728 input30 = aligned30 := FinalChunk528_543.alignment_eq _ _ alignment31_eq
theorem rewrite30_eq : LabToTarget.encSecsAgain 391728 Target.labelsFinal Target.ffis riscvConfig.encode aligned30 = (final30, true) := FinalChunk528_543.rewrite_eq _ _ rewrite31_eq
theorem padding30_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final30 = padded30 := by
  unfold final30 padded30
  rw [Composition.padCode_append, FinalChunk528_543.padding_eq, padding31_eq]
theorem valid30 : LabToTarget.allEncOkLight riscvConfig padded30 = true := Composition.valid_append _ _ _ FinalChunk528_543.valid valid31
def input29 := FinalChunk512_527.input ++ input30
def aligned29 := FinalChunk512_527.aligned ++ aligned30
def final29 := FinalChunk512_527.final ++ final30
def padded29 := FinalChunk512_527.padded ++ padded30
theorem alignment29_eq : LabToTarget.updLabLen 379460 input29 = aligned29 := FinalChunk512_527.alignment_eq _ _ alignment30_eq
theorem rewrite29_eq : LabToTarget.encSecsAgain 379460 Target.labelsFinal Target.ffis riscvConfig.encode aligned29 = (final29, true) := FinalChunk512_527.rewrite_eq _ _ rewrite30_eq
theorem padding29_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final29 = padded29 := by
  unfold final29 padded29
  rw [Composition.padCode_append, FinalChunk512_527.padding_eq, padding30_eq]
theorem valid29 : LabToTarget.allEncOkLight riscvConfig padded29 = true := Composition.valid_append _ _ _ FinalChunk512_527.valid valid30
def input28 := FinalChunk496_511.input ++ input29
def aligned28 := FinalChunk496_511.aligned ++ aligned29
def final28 := FinalChunk496_511.final ++ final29
def padded28 := FinalChunk496_511.padded ++ padded29
theorem alignment28_eq : LabToTarget.updLabLen 367264 input28 = aligned28 := FinalChunk496_511.alignment_eq _ _ alignment29_eq
theorem rewrite28_eq : LabToTarget.encSecsAgain 367264 Target.labelsFinal Target.ffis riscvConfig.encode aligned28 = (final28, true) := FinalChunk496_511.rewrite_eq _ _ rewrite29_eq
theorem padding28_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final28 = padded28 := by
  unfold final28 padded28
  rw [Composition.padCode_append, FinalChunk496_511.padding_eq, padding29_eq]
theorem valid28 : LabToTarget.allEncOkLight riscvConfig padded28 = true := Composition.valid_append _ _ _ FinalChunk496_511.valid valid29
def input27 := FinalChunk480_495.input ++ input28
def aligned27 := FinalChunk480_495.aligned ++ aligned28
def final27 := FinalChunk480_495.final ++ final28
def padded27 := FinalChunk480_495.padded ++ padded28
theorem alignment27_eq : LabToTarget.updLabLen 360332 input27 = aligned27 := FinalChunk480_495.alignment_eq _ _ alignment28_eq
theorem rewrite27_eq : LabToTarget.encSecsAgain 360332 Target.labelsFinal Target.ffis riscvConfig.encode aligned27 = (final27, true) := FinalChunk480_495.rewrite_eq _ _ rewrite28_eq
theorem padding27_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final27 = padded27 := by
  unfold final27 padded27
  rw [Composition.padCode_append, FinalChunk480_495.padding_eq, padding28_eq]
theorem valid27 : LabToTarget.allEncOkLight riscvConfig padded27 = true := Composition.valid_append _ _ _ FinalChunk480_495.valid valid28
def input26 := FinalChunk464_479.input ++ input27
def aligned26 := FinalChunk464_479.aligned ++ aligned27
def final26 := FinalChunk464_479.final ++ final27
def padded26 := FinalChunk464_479.padded ++ padded27
theorem alignment26_eq : LabToTarget.updLabLen 356912 input26 = aligned26 := FinalChunk464_479.alignment_eq _ _ alignment27_eq
theorem rewrite26_eq : LabToTarget.encSecsAgain 356912 Target.labelsFinal Target.ffis riscvConfig.encode aligned26 = (final26, true) := FinalChunk464_479.rewrite_eq _ _ rewrite27_eq
theorem padding26_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final26 = padded26 := by
  unfold final26 padded26
  rw [Composition.padCode_append, FinalChunk464_479.padding_eq, padding27_eq]
theorem valid26 : LabToTarget.allEncOkLight riscvConfig padded26 = true := Composition.valid_append _ _ _ FinalChunk464_479.valid valid27
def input25 := FinalChunk448_463.input ++ input26
def aligned25 := FinalChunk448_463.aligned ++ aligned26
def final25 := FinalChunk448_463.final ++ final26
def padded25 := FinalChunk448_463.padded ++ padded26
theorem alignment25_eq : LabToTarget.updLabLen 328876 input25 = aligned25 := FinalChunk448_463.alignment_eq _ _ alignment26_eq
theorem rewrite25_eq : LabToTarget.encSecsAgain 328876 Target.labelsFinal Target.ffis riscvConfig.encode aligned25 = (final25, true) := FinalChunk448_463.rewrite_eq _ _ rewrite26_eq
theorem padding25_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final25 = padded25 := by
  unfold final25 padded25
  rw [Composition.padCode_append, FinalChunk448_463.padding_eq, padding26_eq]
theorem valid25 : LabToTarget.allEncOkLight riscvConfig padded25 = true := Composition.valid_append _ _ _ FinalChunk448_463.valid valid26
def input24 := FinalChunk432_447.input ++ input25
def aligned24 := FinalChunk432_447.aligned ++ aligned25
def final24 := FinalChunk432_447.final ++ final25
def padded24 := FinalChunk432_447.padded ++ padded25
theorem alignment24_eq : LabToTarget.updLabLen 320936 input24 = aligned24 := FinalChunk432_447.alignment_eq _ _ alignment25_eq
theorem rewrite24_eq : LabToTarget.encSecsAgain 320936 Target.labelsFinal Target.ffis riscvConfig.encode aligned24 = (final24, true) := FinalChunk432_447.rewrite_eq _ _ rewrite25_eq
theorem padding24_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final24 = padded24 := by
  unfold final24 padded24
  rw [Composition.padCode_append, FinalChunk432_447.padding_eq, padding25_eq]
theorem valid24 : LabToTarget.allEncOkLight riscvConfig padded24 = true := Composition.valid_append _ _ _ FinalChunk432_447.valid valid25
def input23 := FinalChunk416_431.input ++ input24
def aligned23 := FinalChunk416_431.aligned ++ aligned24
def final23 := FinalChunk416_431.final ++ final24
def padded23 := FinalChunk416_431.padded ++ padded24
theorem alignment23_eq : LabToTarget.updLabLen 311936 input23 = aligned23 := FinalChunk416_431.alignment_eq _ _ alignment24_eq
theorem rewrite23_eq : LabToTarget.encSecsAgain 311936 Target.labelsFinal Target.ffis riscvConfig.encode aligned23 = (final23, true) := FinalChunk416_431.rewrite_eq _ _ rewrite24_eq
theorem padding23_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final23 = padded23 := by
  unfold final23 padded23
  rw [Composition.padCode_append, FinalChunk416_431.padding_eq, padding24_eq]
theorem valid23 : LabToTarget.allEncOkLight riscvConfig padded23 = true := Composition.valid_append _ _ _ FinalChunk416_431.valid valid24
def input22 := FinalChunk400_415.input ++ input23
def aligned22 := FinalChunk400_415.aligned ++ aligned23
def final22 := FinalChunk400_415.final ++ final23
def padded22 := FinalChunk400_415.padded ++ padded23
theorem alignment22_eq : LabToTarget.updLabLen 303396 input22 = aligned22 := FinalChunk400_415.alignment_eq _ _ alignment23_eq
theorem rewrite22_eq : LabToTarget.encSecsAgain 303396 Target.labelsFinal Target.ffis riscvConfig.encode aligned22 = (final22, true) := FinalChunk400_415.rewrite_eq _ _ rewrite23_eq
theorem padding22_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final22 = padded22 := by
  unfold final22 padded22
  rw [Composition.padCode_append, FinalChunk400_415.padding_eq, padding23_eq]
theorem valid22 : LabToTarget.allEncOkLight riscvConfig padded22 = true := Composition.valid_append _ _ _ FinalChunk400_415.valid valid23
def input21 := FinalChunk384_399.input ++ input22
def aligned21 := FinalChunk384_399.aligned ++ aligned22
def final21 := FinalChunk384_399.final ++ final22
def padded21 := FinalChunk384_399.padded ++ padded22
theorem alignment21_eq : LabToTarget.updLabLen 294128 input21 = aligned21 := FinalChunk384_399.alignment_eq _ _ alignment22_eq
theorem rewrite21_eq : LabToTarget.encSecsAgain 294128 Target.labelsFinal Target.ffis riscvConfig.encode aligned21 = (final21, true) := FinalChunk384_399.rewrite_eq _ _ rewrite22_eq
theorem padding21_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final21 = padded21 := by
  unfold final21 padded21
  rw [Composition.padCode_append, FinalChunk384_399.padding_eq, padding22_eq]
theorem valid21 : LabToTarget.allEncOkLight riscvConfig padded21 = true := Composition.valid_append _ _ _ FinalChunk384_399.valid valid22
def input20 := FinalChunk368_383.input ++ input21
def aligned20 := FinalChunk368_383.aligned ++ aligned21
def final20 := FinalChunk368_383.final ++ final21
def padded20 := FinalChunk368_383.padded ++ padded21
theorem alignment20_eq : LabToTarget.updLabLen 286424 input20 = aligned20 := FinalChunk368_383.alignment_eq _ _ alignment21_eq
theorem rewrite20_eq : LabToTarget.encSecsAgain 286424 Target.labelsFinal Target.ffis riscvConfig.encode aligned20 = (final20, true) := FinalChunk368_383.rewrite_eq _ _ rewrite21_eq
theorem padding20_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final20 = padded20 := by
  unfold final20 padded20
  rw [Composition.padCode_append, FinalChunk368_383.padding_eq, padding21_eq]
theorem valid20 : LabToTarget.allEncOkLight riscvConfig padded20 = true := Composition.valid_append _ _ _ FinalChunk368_383.valid valid21
def input19 := FinalChunk352_367.input ++ input20
def aligned19 := FinalChunk352_367.aligned ++ aligned20
def final19 := FinalChunk352_367.final ++ final20
def padded19 := FinalChunk352_367.padded ++ padded20
theorem alignment19_eq : LabToTarget.updLabLen 276496 input19 = aligned19 := FinalChunk352_367.alignment_eq _ _ alignment20_eq
theorem rewrite19_eq : LabToTarget.encSecsAgain 276496 Target.labelsFinal Target.ffis riscvConfig.encode aligned19 = (final19, true) := FinalChunk352_367.rewrite_eq _ _ rewrite20_eq
theorem padding19_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final19 = padded19 := by
  unfold final19 padded19
  rw [Composition.padCode_append, FinalChunk352_367.padding_eq, padding20_eq]
theorem valid19 : LabToTarget.allEncOkLight riscvConfig padded19 = true := Composition.valid_append _ _ _ FinalChunk352_367.valid valid20
def input18 := FinalChunk336_351.input ++ input19
def aligned18 := FinalChunk336_351.aligned ++ aligned19
def final18 := FinalChunk336_351.final ++ final19
def padded18 := FinalChunk336_351.padded ++ padded19
theorem alignment18_eq : LabToTarget.updLabLen 266148 input18 = aligned18 := FinalChunk336_351.alignment_eq _ _ alignment19_eq
theorem rewrite18_eq : LabToTarget.encSecsAgain 266148 Target.labelsFinal Target.ffis riscvConfig.encode aligned18 = (final18, true) := FinalChunk336_351.rewrite_eq _ _ rewrite19_eq
theorem padding18_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final18 = padded18 := by
  unfold final18 padded18
  rw [Composition.padCode_append, FinalChunk336_351.padding_eq, padding19_eq]
theorem valid18 : LabToTarget.allEncOkLight riscvConfig padded18 = true := Composition.valid_append _ _ _ FinalChunk336_351.valid valid19
def input17 := FinalChunk320_335.input ++ input18
def aligned17 := FinalChunk320_335.aligned ++ aligned18
def final17 := FinalChunk320_335.final ++ final18
def padded17 := FinalChunk320_335.padded ++ padded18
theorem alignment17_eq : LabToTarget.updLabLen 252648 input17 = aligned17 := FinalChunk320_335.alignment_eq _ _ alignment18_eq
theorem rewrite17_eq : LabToTarget.encSecsAgain 252648 Target.labelsFinal Target.ffis riscvConfig.encode aligned17 = (final17, true) := FinalChunk320_335.rewrite_eq _ _ rewrite18_eq
theorem padding17_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final17 = padded17 := by
  unfold final17 padded17
  rw [Composition.padCode_append, FinalChunk320_335.padding_eq, padding18_eq]
theorem valid17 : LabToTarget.allEncOkLight riscvConfig padded17 = true := Composition.valid_append _ _ _ FinalChunk320_335.valid valid18
def input16 := FinalChunk304_319.input ++ input17
def aligned16 := FinalChunk304_319.aligned ++ aligned17
def final16 := FinalChunk304_319.final ++ final17
def padded16 := FinalChunk304_319.padded ++ padded17
theorem alignment16_eq : LabToTarget.updLabLen 239620 input16 = aligned16 := FinalChunk304_319.alignment_eq _ _ alignment17_eq
theorem rewrite16_eq : LabToTarget.encSecsAgain 239620 Target.labelsFinal Target.ffis riscvConfig.encode aligned16 = (final16, true) := FinalChunk304_319.rewrite_eq _ _ rewrite17_eq
theorem padding16_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final16 = padded16 := by
  unfold final16 padded16
  rw [Composition.padCode_append, FinalChunk304_319.padding_eq, padding17_eq]
theorem valid16 : LabToTarget.allEncOkLight riscvConfig padded16 = true := Composition.valid_append _ _ _ FinalChunk304_319.valid valid17
def input15 := FinalChunk288_303.input ++ input16
def aligned15 := FinalChunk288_303.aligned ++ aligned16
def final15 := FinalChunk288_303.final ++ final16
def padded15 := FinalChunk288_303.padded ++ padded16
theorem alignment15_eq : LabToTarget.updLabLen 230160 input15 = aligned15 := FinalChunk288_303.alignment_eq _ _ alignment16_eq
theorem rewrite15_eq : LabToTarget.encSecsAgain 230160 Target.labelsFinal Target.ffis riscvConfig.encode aligned15 = (final15, true) := FinalChunk288_303.rewrite_eq _ _ rewrite16_eq
theorem padding15_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final15 = padded15 := by
  unfold final15 padded15
  rw [Composition.padCode_append, FinalChunk288_303.padding_eq, padding16_eq]
theorem valid15 : LabToTarget.allEncOkLight riscvConfig padded15 = true := Composition.valid_append _ _ _ FinalChunk288_303.valid valid16
def input14 := FinalChunk272_287.input ++ input15
def aligned14 := FinalChunk272_287.aligned ++ aligned15
def final14 := FinalChunk272_287.final ++ final15
def padded14 := FinalChunk272_287.padded ++ padded15
theorem alignment14_eq : LabToTarget.updLabLen 208784 input14 = aligned14 := FinalChunk272_287.alignment_eq _ _ alignment15_eq
theorem rewrite14_eq : LabToTarget.encSecsAgain 208784 Target.labelsFinal Target.ffis riscvConfig.encode aligned14 = (final14, true) := FinalChunk272_287.rewrite_eq _ _ rewrite15_eq
theorem padding14_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final14 = padded14 := by
  unfold final14 padded14
  rw [Composition.padCode_append, FinalChunk272_287.padding_eq, padding15_eq]
theorem valid14 : LabToTarget.allEncOkLight riscvConfig padded14 = true := Composition.valid_append _ _ _ FinalChunk272_287.valid valid15
def input13 := FinalChunk256_271.input ++ input14
def aligned13 := FinalChunk256_271.aligned ++ aligned14
def final13 := FinalChunk256_271.final ++ final14
def padded13 := FinalChunk256_271.padded ++ padded14
theorem alignment13_eq : LabToTarget.updLabLen 189488 input13 = aligned13 := FinalChunk256_271.alignment_eq _ _ alignment14_eq
theorem rewrite13_eq : LabToTarget.encSecsAgain 189488 Target.labelsFinal Target.ffis riscvConfig.encode aligned13 = (final13, true) := FinalChunk256_271.rewrite_eq _ _ rewrite14_eq
theorem padding13_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final13 = padded13 := by
  unfold final13 padded13
  rw [Composition.padCode_append, FinalChunk256_271.padding_eq, padding14_eq]
theorem valid13 : LabToTarget.allEncOkLight riscvConfig padded13 = true := Composition.valid_append _ _ _ FinalChunk256_271.valid valid14
def input12 := FinalChunk240_255.input ++ input13
def aligned12 := FinalChunk240_255.aligned ++ aligned13
def final12 := FinalChunk240_255.final ++ final13
def padded12 := FinalChunk240_255.padded ++ padded13
theorem alignment12_eq : LabToTarget.updLabLen 176064 input12 = aligned12 := FinalChunk240_255.alignment_eq _ _ alignment13_eq
theorem rewrite12_eq : LabToTarget.encSecsAgain 176064 Target.labelsFinal Target.ffis riscvConfig.encode aligned12 = (final12, true) := FinalChunk240_255.rewrite_eq _ _ rewrite13_eq
theorem padding12_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final12 = padded12 := by
  unfold final12 padded12
  rw [Composition.padCode_append, FinalChunk240_255.padding_eq, padding13_eq]
theorem valid12 : LabToTarget.allEncOkLight riscvConfig padded12 = true := Composition.valid_append _ _ _ FinalChunk240_255.valid valid13
def input11 := FinalChunk224_239.input ++ input12
def aligned11 := FinalChunk224_239.aligned ++ aligned12
def final11 := FinalChunk224_239.final ++ final12
def padded11 := FinalChunk224_239.padded ++ padded12
theorem alignment11_eq : LabToTarget.updLabLen 129580 input11 = aligned11 := FinalChunk224_239.alignment_eq _ _ alignment12_eq
theorem rewrite11_eq : LabToTarget.encSecsAgain 129580 Target.labelsFinal Target.ffis riscvConfig.encode aligned11 = (final11, true) := FinalChunk224_239.rewrite_eq _ _ rewrite12_eq
theorem padding11_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final11 = padded11 := by
  unfold final11 padded11
  rw [Composition.padCode_append, FinalChunk224_239.padding_eq, padding12_eq]
theorem valid11 : LabToTarget.allEncOkLight riscvConfig padded11 = true := Composition.valid_append _ _ _ FinalChunk224_239.valid valid12
def input10 := FinalChunk208_223.input ++ input11
def aligned10 := FinalChunk208_223.aligned ++ aligned11
def final10 := FinalChunk208_223.final ++ final11
def padded10 := FinalChunk208_223.padded ++ padded11
theorem alignment10_eq : LabToTarget.updLabLen 118404 input10 = aligned10 := FinalChunk208_223.alignment_eq _ _ alignment11_eq
theorem rewrite10_eq : LabToTarget.encSecsAgain 118404 Target.labelsFinal Target.ffis riscvConfig.encode aligned10 = (final10, true) := FinalChunk208_223.rewrite_eq _ _ rewrite11_eq
theorem padding10_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final10 = padded10 := by
  unfold final10 padded10
  rw [Composition.padCode_append, FinalChunk208_223.padding_eq, padding11_eq]
theorem valid10 : LabToTarget.allEncOkLight riscvConfig padded10 = true := Composition.valid_append _ _ _ FinalChunk208_223.valid valid11
def input9 := FinalChunk192_207.input ++ input10
def aligned9 := FinalChunk192_207.aligned ++ aligned10
def final9 := FinalChunk192_207.final ++ final10
def padded9 := FinalChunk192_207.padded ++ padded10
theorem alignment9_eq : LabToTarget.updLabLen 102120 input9 = aligned9 := FinalChunk192_207.alignment_eq _ _ alignment10_eq
theorem rewrite9_eq : LabToTarget.encSecsAgain 102120 Target.labelsFinal Target.ffis riscvConfig.encode aligned9 = (final9, true) := FinalChunk192_207.rewrite_eq _ _ rewrite10_eq
theorem padding9_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final9 = padded9 := by
  unfold final9 padded9
  rw [Composition.padCode_append, FinalChunk192_207.padding_eq, padding10_eq]
theorem valid9 : LabToTarget.allEncOkLight riscvConfig padded9 = true := Composition.valid_append _ _ _ FinalChunk192_207.valid valid10
def input8 := FinalChunk176_191.input ++ input9
def aligned8 := FinalChunk176_191.aligned ++ aligned9
def final8 := FinalChunk176_191.final ++ final9
def padded8 := FinalChunk176_191.padded ++ padded9
theorem alignment8_eq : LabToTarget.updLabLen 96624 input8 = aligned8 := FinalChunk176_191.alignment_eq _ _ alignment9_eq
theorem rewrite8_eq : LabToTarget.encSecsAgain 96624 Target.labelsFinal Target.ffis riscvConfig.encode aligned8 = (final8, true) := FinalChunk176_191.rewrite_eq _ _ rewrite9_eq
theorem padding8_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final8 = padded8 := by
  unfold final8 padded8
  rw [Composition.padCode_append, FinalChunk176_191.padding_eq, padding9_eq]
theorem valid8 : LabToTarget.allEncOkLight riscvConfig padded8 = true := Composition.valid_append _ _ _ FinalChunk176_191.valid valid9
def input7 := FinalChunk160_175.input ++ input8
def aligned7 := FinalChunk160_175.aligned ++ aligned8
def final7 := FinalChunk160_175.final ++ final8
def padded7 := FinalChunk160_175.padded ++ padded8
theorem alignment7_eq : LabToTarget.updLabLen 87592 input7 = aligned7 := FinalChunk160_175.alignment_eq _ _ alignment8_eq
theorem rewrite7_eq : LabToTarget.encSecsAgain 87592 Target.labelsFinal Target.ffis riscvConfig.encode aligned7 = (final7, true) := FinalChunk160_175.rewrite_eq _ _ rewrite8_eq
theorem padding7_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final7 = padded7 := by
  unfold final7 padded7
  rw [Composition.padCode_append, FinalChunk160_175.padding_eq, padding8_eq]
theorem valid7 : LabToTarget.allEncOkLight riscvConfig padded7 = true := Composition.valid_append _ _ _ FinalChunk160_175.valid valid8
def input6 := FinalChunk144_159.input ++ input7
def aligned6 := FinalChunk144_159.aligned ++ aligned7
def final6 := FinalChunk144_159.final ++ final7
def padded6 := FinalChunk144_159.padded ++ padded7
theorem alignment6_eq : LabToTarget.updLabLen 29520 input6 = aligned6 := FinalChunk144_159.alignment_eq _ _ alignment7_eq
theorem rewrite6_eq : LabToTarget.encSecsAgain 29520 Target.labelsFinal Target.ffis riscvConfig.encode aligned6 = (final6, true) := FinalChunk144_159.rewrite_eq _ _ rewrite7_eq
theorem padding6_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final6 = padded6 := by
  unfold final6 padded6
  rw [Composition.padCode_append, FinalChunk144_159.padding_eq, padding7_eq]
theorem valid6 : LabToTarget.allEncOkLight riscvConfig padded6 = true := Composition.valid_append _ _ _ FinalChunk144_159.valid valid7
def input5 := FinalChunk128_143.input ++ input6
def aligned5 := FinalChunk128_143.aligned ++ aligned6
def final5 := FinalChunk128_143.final ++ final6
def padded5 := FinalChunk128_143.padded ++ padded6
theorem alignment5_eq : LabToTarget.updLabLen 21264 input5 = aligned5 := FinalChunk128_143.alignment_eq _ _ alignment6_eq
theorem rewrite5_eq : LabToTarget.encSecsAgain 21264 Target.labelsFinal Target.ffis riscvConfig.encode aligned5 = (final5, true) := FinalChunk128_143.rewrite_eq _ _ rewrite6_eq
theorem padding5_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final5 = padded5 := by
  unfold final5 padded5
  rw [Composition.padCode_append, FinalChunk128_143.padding_eq, padding6_eq]
theorem valid5 : LabToTarget.allEncOkLight riscvConfig padded5 = true := Composition.valid_append _ _ _ FinalChunk128_143.valid valid6
def input4 := FinalChunk112_127.input ++ input5
def aligned4 := FinalChunk112_127.aligned ++ aligned5
def final4 := FinalChunk112_127.final ++ final5
def padded4 := FinalChunk112_127.padded ++ padded5
theorem alignment4_eq : LabToTarget.updLabLen 11776 input4 = aligned4 := FinalChunk112_127.alignment_eq _ _ alignment5_eq
theorem rewrite4_eq : LabToTarget.encSecsAgain 11776 Target.labelsFinal Target.ffis riscvConfig.encode aligned4 = (final4, true) := FinalChunk112_127.rewrite_eq _ _ rewrite5_eq
theorem padding4_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final4 = padded4 := by
  unfold final4 padded4
  rw [Composition.padCode_append, FinalChunk112_127.padding_eq, padding5_eq]
theorem valid4 : LabToTarget.allEncOkLight riscvConfig padded4 = true := Composition.valid_append _ _ _ FinalChunk112_127.valid valid5
def input3 := FinalChunk96_111.input ++ input4
def aligned3 := FinalChunk96_111.aligned ++ aligned4
def final3 := FinalChunk96_111.final ++ final4
def padded3 := FinalChunk96_111.padded ++ padded4
theorem alignment3_eq : LabToTarget.updLabLen 10272 input3 = aligned3 := FinalChunk96_111.alignment_eq _ _ alignment4_eq
theorem rewrite3_eq : LabToTarget.encSecsAgain 10272 Target.labelsFinal Target.ffis riscvConfig.encode aligned3 = (final3, true) := FinalChunk96_111.rewrite_eq _ _ rewrite4_eq
theorem padding3_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final3 = padded3 := by
  unfold final3 padded3
  rw [Composition.padCode_append, FinalChunk96_111.padding_eq, padding4_eq]
theorem valid3 : LabToTarget.allEncOkLight riscvConfig padded3 = true := Composition.valid_append _ _ _ FinalChunk96_111.valid valid4
def input2 := FinalChunk80_95.input ++ input3
def aligned2 := FinalChunk80_95.aligned ++ aligned3
def final2 := FinalChunk80_95.final ++ final3
def padded2 := FinalChunk80_95.padded ++ padded3
theorem alignment2_eq : LabToTarget.updLabLen 7976 input2 = aligned2 := FinalChunk80_95.alignment_eq _ _ alignment3_eq
theorem rewrite2_eq : LabToTarget.encSecsAgain 7976 Target.labelsFinal Target.ffis riscvConfig.encode aligned2 = (final2, true) := FinalChunk80_95.rewrite_eq _ _ rewrite3_eq
theorem padding2_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final2 = padded2 := by
  unfold final2 padded2
  rw [Composition.padCode_append, FinalChunk80_95.padding_eq, padding3_eq]
theorem valid2 : LabToTarget.allEncOkLight riscvConfig padded2 = true := Composition.valid_append _ _ _ FinalChunk80_95.valid valid3
def input1 := FinalChunk64_79.input ++ input2
def aligned1 := FinalChunk64_79.aligned ++ aligned2
def final1 := FinalChunk64_79.final ++ final2
def padded1 := FinalChunk64_79.padded ++ padded2
theorem alignment1_eq : LabToTarget.updLabLen 1000 input1 = aligned1 := FinalChunk64_79.alignment_eq _ _ alignment2_eq
theorem rewrite1_eq : LabToTarget.encSecsAgain 1000 Target.labelsFinal Target.ffis riscvConfig.encode aligned1 = (final1, true) := FinalChunk64_79.rewrite_eq _ _ rewrite2_eq
theorem padding1_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final1 = padded1 := by
  unfold final1 padded1
  rw [Composition.padCode_append, FinalChunk64_79.padding_eq, padding2_eq]
theorem valid1 : LabToTarget.allEncOkLight riscvConfig padded1 = true := Composition.valid_append _ _ _ FinalChunk64_79.valid valid2
def input0 := FinalChunkStubs.input ++ input1
def aligned0 := FinalChunkStubs.aligned ++ aligned1
def final0 := FinalChunkStubs.final ++ final1
def padded0 := FinalChunkStubs.padded ++ padded1
theorem alignment0_eq : LabToTarget.updLabLen 0 input0 = aligned0 := FinalChunkStubs.alignment_eq _ _ alignment1_eq
theorem rewrite0_eq : LabToTarget.encSecsAgain 0 Target.labelsFinal Target.ffis riscvConfig.encode aligned0 = (final0, true) := FinalChunkStubs.rewrite_eq _ _ rewrite1_eq
theorem padding0_eq : LabToTarget.padCode (riscvConfig.encode (.inst .skip)) final0 = padded0 := by
  unfold final0 padded0
  rw [Composition.padCode_append, FinalChunkStubs.padding_eq, padding1_eq]
theorem valid0 : LabToTarget.allEncOkLight riscvConfig padded0 = true := Composition.valid_append _ _ _ FinalChunkStubs.valid valid1
#print axioms alignment0_eq
#print axioms rewrite0_eq
#print axioms padding0_eq
#print axioms valid0
end InitECandidate.Proofs.BackendStages.Final
namespace InitECandidate.Proofs.BackendStages.Alignment
def program := Final.aligned0
end InitECandidate.Proofs.BackendStages.Alignment
